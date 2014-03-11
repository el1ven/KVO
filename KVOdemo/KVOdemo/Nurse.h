//
//  Nurse.h
//  KVOdemo
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
@interface Nurse : NSObject

@property(nonatomic,retain)Child *child;
-(id)initWithChild:(Child*)child123;

@end
