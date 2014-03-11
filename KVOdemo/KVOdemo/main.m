//
//  main.m
//  KVOdemo
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
#import "Nurse.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Child *child = [[Child alloc]init];
        Nurse *nurse = [[Nurse alloc]initWithChild:child];
        [[NSRunLoop currentRunLoop]run];
        
        
    }
    return 0;
}

