//
//  QuickSortCpp.m
//  CppVsSwift
//
//  Created by Piotr Holub on 02.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <iostream>
#import "QuickSortCpp.h"
#include "QuickSort.hpp"
#include <algorithm>

using namespace std;

@implementation QuickSortCpp
-(void) quickSortCpp:(NSArray *)arrayWithNumbers{
    int list [arrayWithNumbers.count];
    for (int i=0;i<arrayWithNumbers.count;i++){
        list[i]=[[arrayWithNumbers objectAtIndex:i]integerValue];
        //cout << "number: " << [[arrayWithNumbers[ objectAtIndex:i]]integerValue]<<" xx "<<endl; //cStringUsingEncoding:NSUTF8StringEncoding
    }
    sort(list, list+arrayWithNumbers.count);
    //QuickSort().quicksort(list,0,arrayWithNumbers.count-1);
    //for (int i=0;i<arrayWithNumbers.count;i++){
        //cout << "number: " << list[i] << endl;
    //}
}
@end

