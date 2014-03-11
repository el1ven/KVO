//
//  FileCopy.m
//  PracticeKVO
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "FileCopy.h"

@implementation FileCopy

-(id)initPath:(NSString *)src targetPath:(NSString*) target{ //init method with source and target path
    self = [super init];
    if(self){
        self->srcPath = src;
        self->targetPath = target;
    }
    return self;
}
-(void)startCopy{  // execute to copy file
    
    NSFileManager *fileManager = [NSFileManager defaultManager];//利用NSFileManager来“创建”文件
    BOOL success = [fileManager createFileAtPath:self->targetPath contents:nil attributes:nil];
    if(success){
        NSLog(@"target file create success!");
    }
    
    //读文件和写文件用fileHandle,它不能创建文件的
    NSFileHandle *readFile = [NSFileHandle fileHandleForReadingAtPath:self->srcPath];
    NSFileHandle *writeFile = [NSFileHandle fileHandleForWritingAtPath:self->targetPath];
    
    NSDictionary *fileAttribute = [fileManager attributesOfItemAtPath:self->srcPath error:nil];//用这个来获取文件大小而不跳转偏移量
    NSNumber *fileSizeNum = [fileAttribute objectForKey:NSFileSize];
    
    BOOL isNotEnd = YES;//检查文件是否读到了末尾
    self.fileSize = [fileSizeNum longValue];//将NSNumber转化为NSInteger
    
    while (isNotEnd){
        NSData *data = nil;//读取的文件数据存到这里
        NSInteger subLength = self.fileSize - self.readSize;//剩下的数据
        if(subLength <500){
            [readFile readDataToEndOfFile];
            isNotEnd = NO;//读取结束,就是到了结尾
        }else{
            data = [readFile readDataOfLength:500];
            self.readSize += 500;
            [readFile seekToFileOffset:self.readSize];
            //NSLog(@"123");//用于检测
        }
        
        [writeFile writeData:data];//写入到目标文件
        
    }
    
    [writeFile closeFile];//关闭FileHandle
    [readFile closeFile];
    
}
@end
