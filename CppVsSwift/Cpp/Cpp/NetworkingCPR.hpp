//
//  NetworkingCPR.hpp
//  CppVsSwift
//
//  Created by Piotr Holub on 04.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#ifndef NetworkingCPR_hpp
#define NetworkingCPR_hpp

#include <stdio.h>
#include <string>

class NetworkingCPR {
public:
    NetworkingCPR();
    ~NetworkingCPR();
    std::string download(const std::string& url);
private:
    void* curl;
};
#endif /* NetworkingCPR_hpp */
