//
//  User.h
//  PracticeKVO
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileCopy.h"
@interface User : NSObject
{
    FileCopy *fileCopy; //观察者模式的用法
}

-(void)doSomething;//用这个函数来进行操作

@end
