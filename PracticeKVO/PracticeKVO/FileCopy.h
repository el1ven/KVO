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
    NSString *srcPath;//the source path for the file while has existed
    NSString *targetPath;// store the target file of path while we will build later
}
@property(nonatomic,assign)float fileSize; //the total size of the size which we need to copy
@property(nonatomic,assign)float readSize; //the size which we are having been copying 

-(id)initPath:(NSString *)srcPath targetPath:(NSString*) targetPath;//init method
-(void)startCopy;//start to copy, execute method

@end
