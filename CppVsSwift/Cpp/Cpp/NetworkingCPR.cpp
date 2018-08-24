//
//  NetworkingCPR.cpp
//  CppVsSwift
//
//  Created by Piotr Holub on 04.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#include "NetworkingCPR.hpp"
#include <iostream>
#include <stdio.h>
#include <curl/curl.h>
#include <sstream>
#include <unistd.h>


using namespace std;

size_t write_data(void *ptr, size_t size, size_t nmemb, void *stream) {
    string data((const char*) ptr, (size_t) size * nmemb);
    *((stringstream*) stream) << data << endl;
    return size * nmemb;
}

NetworkingCPR::NetworkingCPR(){
    curl = curl_easy_init();

}
NetworkingCPR::~NetworkingCPR() {
    curl_easy_cleanup(curl);
}


string NetworkingCPR::download(const std::string& url){
    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != NULL) {
        std::cout << cwd << std::endl;
        //printf(stdout, "Current working dir: %s\n", cwd);
    } else {
        perror("getcwd() error");
       
    }
    
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_CAINFO, "cacert.pem");
    /* example.com is redirected, so we tell libcurl to follow redirection */
    curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
    curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1); //Prevent "longjmp causes uninitialized stack frame" bug
    curl_easy_setopt(curl, CURLOPT_ACCEPT_ENCODING, "deflate");
    std::stringstream out;
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &out);
    /* Perform the request, res will get the return code */
    CURLcode res = curl_easy_perform(curl);
    /* Check for errors */
    if (res != CURLE_OK) {
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
                curl_easy_strerror(res));
    }
    return out.str();
    //std::cout << out.str() << std::endl;
}


