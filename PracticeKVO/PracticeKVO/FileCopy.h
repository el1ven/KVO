//
//  FileCopy.h
//  PracticeKVO
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileCopy : NSObject
{   @private
    NSString *srcPath;
    NSString *targetPath;
}
@property(nonatomic,assign)float fileSize;
@property(nonatomic,assign)float readSize;

-(id)initPath:(NSString *)srcPath targetPath:(NSString*) targetPath;
-(void)startCopy;

@end
