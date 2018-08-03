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

using namespace std;


@implementation AlgorithmApi
-(void) sortIntegers:(NSArray *)array{
    int * list = [Casting toIntegerArray:array];
    sort(list, list+array.count);
    //QuickSort().quicksort(list,0,arrayWithNumbers.count-1);
    //for (int i=0;i<arrayWithNumbers.count;i++){
    //cout << "number: " << list[i] << endl;
    //}
}
@end
