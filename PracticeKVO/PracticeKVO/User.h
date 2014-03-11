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
    FileCopy *fileCopy;
}

-(void)doSomething;

@end
