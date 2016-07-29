//
//  ViewController.m
//  runtime题目
//
//  Created by lyw on 16/7/28.
//  Copyright © 2016年 lyw. All rights reserved.
//

#import "ViewController.h"
#import "Son.h"
#import "Sark.h"
#import "NSObject+Sark.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    id cls = [Sark class];
    void *obj = &cls;

    [(__bridge id)obj speak];
    
    
//    [self test4];
//    [self test3];
//    [self test2];
    
}


- (void)test4 {

    id cls = [Sark class];
    void *obj = &cls;
    [(__bridge id)obj speak];

}

- (void)test3 {

    [NSObject foo];
    [[NSObject new] foo];

}

- (void)test2 {

    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    
    BOOL res3 = [(id)[Sark class] isKindOfClass:[Sark class]];
    BOOL res4 = [(id)[Sark class] isMemberOfClass:[Sark class]];
    
    BOOL res5 = [(id)[Sark class] isKindOfClass:[NSObject class]];
    BOOL res6 = [(id)[Sark class] isMemberOfClass:[NSObject class]];
    
    
    Sark * sark = [[Sark alloc]init];
    BOOL res7 = [sark isKindOfClass:[Sark class]];
    BOOL res8 = [sark isMemberOfClass:[Sark class]];
    
     NSLog(@"%d %d %d %d %d %d %d %d", res1, res2, res3, res4, res5, res6,res7,res8);

}

- (void)test1{

    Son * son = [[Son alloc]init];
    [son test];

}

@end
