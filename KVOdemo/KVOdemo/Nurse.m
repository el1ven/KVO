//
//  Nurse.m
//  KVOdemo
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "Nurse.h"

@implementation Nurse

-(id)initWithChild:(Child*)child123{
    self = [super init];
    if(self){
        self.child = child123;
        
        [self.child addObserver:self forKeyPath:@"happyValue" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];//self当前对象注册一个监听器
        
    }
    return self;
}

//监听器所要触发的方法
-(void)observeValueForKeyPath:(NSString *)keyPath//forKeyPath
                     ofObject:(id)object//child
                     change:(NSDict
                             ionary *)change//new or old
                     context:(void *)context//context
{
    NSLog(@"%@",change);
    
}
@end
