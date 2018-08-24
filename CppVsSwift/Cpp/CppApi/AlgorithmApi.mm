//
//  AlgorithmApi.m
//  CppVsSwift
//
//  Created by Piotr Holub on 03.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlgorithmApi.h"
#import "Casting.h"
#include <iostream>
#include <algorithm>
#import "NetworkingCPR.hpp"
using namespace std;


@implementation AlgorithmApi
-(void) sortIntegers:(NSArray *)array{
    int * list = [Casting toIntegerArray:array];
    sort(list, list+array.count);
}

-(void) getRequest:(NSString *)url{
    NetworkingCPR network ;
    string x = network.download([url UTF8String]);
    cout << x.size() <<endl;

}
@end
