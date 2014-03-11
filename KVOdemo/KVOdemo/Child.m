//
//  Child.m
//  KVOdemo
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "Child.h"

@implementation Child

-(id)init{
    self = [super init];
    if(self){
        self.happyValue = 100;
        [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    }
    return self;
}



-(void)timeAction{
    self.happyValue--;
}



@end
