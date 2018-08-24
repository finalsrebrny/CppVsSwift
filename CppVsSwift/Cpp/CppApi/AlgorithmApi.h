//
//  AlgorithmApi.h
//  CppVsSwift
//
//  Created by Piotr Holub on 03.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#ifndef AlgorithmApi_h
#define AlgorithmApi_h

#import <Foundation/Foundation.h>
@interface AlgorithmApi: NSObject
-(void)sortIntegers:(NSArray *)array;
-(void)getRequest:(NSString *)url;
@end

#endif /* AlgorithmApi_h */
