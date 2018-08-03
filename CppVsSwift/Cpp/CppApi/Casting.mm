//
//  Casting.m
//  CppVsSwift
//
//  Created by Piotr Holub on 03.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//
#include "Casting.h"
#import <Foundation/Foundation.h>
#include <iostream>
using namespace std;


@implementation Casting
+(int*)toIntegerArray:(NSArray *)array{
    int * newIntegerArray = new int[array.count];;
    for (int i=0;i<array.count;i++){
        newIntegerArray[i] = [[array objectAtIndex:i]integerValue];
        //cout <<newIntegerArray[i]<<endl;
    }
    return newIntegerArray;
}
@end
