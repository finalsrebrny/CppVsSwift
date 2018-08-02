//
//  HelloFromCPP.m
//  CppVsSwift
//
//  Created by Piotr Holub on 02.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <iostream>
#import "HelloFromCPP.h"

using namespace std;

@implementation HelloFromCPP
-(void) helloFromCPP:(NSString *)name{
    cout << "Hello" << [name cStringUsingEncoding:NSUTF8StringEncoding];
    
}
@end
