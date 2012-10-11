//
//  objc-history.m
//  test
//
//  Created by Nicolas on 10/10/12.
//  Copyright (c) 2012 Nicolas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Test : NSObject
{
    id a;
}
@property id b;
@end

@interface Test ()
@property id c;
@end

@interface Test ()
@property id d;
@end

@implementation Test
{
    id e;
    id id;
    CGRect rect;
}

- toto: toto
{
    return toto;
}

- bla
{
    return @"bla";
}

@end

@interface Test2 : Test
@end

@implementation Test2

- (int) toto
{
    return 3;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        id test = [Test new];
        NSLog(@"Toto : %@",[[test toto:test] bla]);

        NSLog(@"Toto : %@", [test valueForKey:@"rect"]);

        
//        int unsigned numMethods;
//        Method *methods = class_copyMethodList(objc_getMetaClass("NSArray"), &numMethods);
//        for (int i = 0; i < numMethods; i++) {
//            NSLog(@"%@", NSStringFromSelector(method_getName(methods[i])));
//        }
       
    }
    return 0;
}

