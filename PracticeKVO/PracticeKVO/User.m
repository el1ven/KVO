//
//  User.m
//  PracticeKVO
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "User.h"
#import "FileCopy.h"
@implementation User

-(id)init{
    self = [super init];
    if(self){
        NSString *homePath = NSHomeDirectory();
        NSString *srcPath = [homePath stringByAppendingString:@"/DeskTop/hk.txt"];
        NSString *targetPath = [homePath stringByAppendingString:@"/DeskTop/hk789.txt"];
        self->fileCopy = [[FileCopy alloc]initPath:srcPath targetPath:targetPath];
        [self->fileCopy addObserver:self forKeyPath:@"readSize" options:NSKeyValueObservingOptionNew context:nil];

    }
    return self;
}

-(void)doSomething{
    [self->fileCopy startCopy];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if([keyPath isEqualToString:@"readSize"]){
        NSNumber *readSize123 = [change objectForKey:@"new"];
        float readSize456 = [readSize123 floatValue];
        if ([object isKindOfClass:[FileCopy class]]) {
            FileCopy *file = (FileCopy*)object;
            float filesize = file.fileSize;
            float result = readSize456/filesize*100;
            NSLog(@"复制进度-----%0.2f",result);
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
@end
