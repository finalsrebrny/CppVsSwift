//
//  QuickSortCpp.h
//  CppVsSwift
//
//  Created by Piotr Holub on 02.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#ifndef QuickSortCpp_h
#define QuickSortCpp_h

#import <Foundation/Foundation.h>
@interface QuickSortCpp: NSObject

-(void)quickSortCpp:(NSArray *)arrayWithNumbers;

-(int)partition2:(NSArray *)arrayWithNumbers;
@end

#endif /* QuickSortCpp_h */

