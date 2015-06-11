//
//  ViewController.m
//  NSInvocationBug
//
//  Created by Aleksey Garbarev on 12.06.15.
//  Copyright (c) 2015 AppsQuick.ly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

typedef struct {
    Float64 a;
    Float64 b;
    Float64 c;
    Float64 d;
} FourDoubles;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self callTestMethod1];
    [self callTestMethod2];
    [self callTestMethod3];
    [self callTestMethod4];

}

//-------------------------------------------------------------------------------------------
#pragma mark - Test 1
//-------------------------------------------------------------------------------------------


- (void)callTestMethod1
{
    SEL selector = @selector(test1MethodWithDouble1:double2:double3:double4:doublesStruct:double5:double6:double7:double8:double9:double10:);
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
    invocation.selector = selector;
    invocation.target = self;
    
    Float64 value = 1;
    [invocation setArgument:&value atIndex:2];
    value = 2;
    [invocation setArgument:&value atIndex:3];
    value = 3;
    [invocation setArgument:&value atIndex:4];
    value = 4;
    [invocation setArgument:&value atIndex:5];
    
    FourDoubles structure = { 10, 20, 30, 40 };
    [invocation setArgument:&structure atIndex:6];
    
    value = 5;
    [invocation setArgument:&value atIndex:7];
    value = 6;
    [invocation setArgument:&value atIndex:8];
    value = 7;
    [invocation setArgument:&value atIndex:9];
    value = 8;
    [invocation setArgument:&value atIndex:10];
    value = 9;
    [invocation setArgument:&value atIndex:11];
    value = 10;
    [invocation setArgument:&value atIndex:12];
    
    [invocation invoke];
}

- (void)test1MethodWithDouble1:(Float64)double1
                       double2:(Float64)double2
                       double3:(Float64)double3
                       double4:(Float64)double4
                 doublesStruct:(FourDoubles)doublesStruct
                       double5:(Float64)double5
                       double6:(Float64)double6
                       double7:(Float64)double7
                       double8:(Float64)double8
                       double9:(Float64)double9
                      double10:(Float64)double10
{
    NSLog(@"-------- TEST1 ---------");
    NSLog(@"1: %g", double1);
    NSLog(@"2: %g", double2);
    NSLog(@"3: %g", double3);
    NSLog(@"4: %g", double4);
    
    NSLog(@"Structure = {%g, %g, %g, %g}", doublesStruct.a, doublesStruct.b, doublesStruct.c, doublesStruct.d);

    NSLog(@"5: %g", double5);
    NSLog(@"6: %g", double6);
    NSLog(@"7: %g", double7);
    NSLog(@"8: %g", double8);
    NSLog(@"9: %g", double9);
    NSLog(@"10: %g", double10);
    NSLog(@"------------------------");
}

//-------------------------------------------------------------------------------------------
#pragma mark - Test 2
//-------------------------------------------------------------------------------------------

- (void)callTestMethod2
{
    SEL selector = @selector(test2MethodWithDouble1:double2:double3:double4:double5:doublesStruct:double6:double7:double8:double9:double10:);
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
    invocation.selector = selector;
    invocation.target = self;
    
    Float64 value = 1;
    [invocation setArgument:&value atIndex:2];
    value = 2;
    [invocation setArgument:&value atIndex:3];
    value = 3;
    [invocation setArgument:&value atIndex:4];
    value = 4;
    [invocation setArgument:&value atIndex:5];
    value = 5;
    [invocation setArgument:&value atIndex:6];
    
    FourDoubles structure = { 10, 20, 30, 40 };
    [invocation setArgument:&structure atIndex:7];
    
    value = 6;
    [invocation setArgument:&value atIndex:8];
    value = 7;
    [invocation setArgument:&value atIndex:9];
    value = 8;
    [invocation setArgument:&value atIndex:10];
    value = 9;
    [invocation setArgument:&value atIndex:11];
    value = 10;
    [invocation setArgument:&value atIndex:12];
    
    [invocation invoke];
}

- (void)test2MethodWithDouble1:(Float64)double1
                       double2:(Float64)double2
                       double3:(Float64)double3
                       double4:(Float64)double4
                       double5:(Float64)double5
                 doublesStruct:(FourDoubles)doublesStruct
                       double6:(Float64)double6
                       double7:(Float64)double7
                       double8:(Float64)double8
                       double9:(Float64)double9
                      double10:(Float64)double10
{
    NSLog(@"-------- TEST2 ---------");
    NSLog(@"1: %g", double1);
    NSLog(@"2: %g", double2);
    NSLog(@"3: %g", double3);
    NSLog(@"4: %g", double4);
    NSLog(@"5: %g", double5);
    
    NSLog(@"Structure = {%g, %g, %g, %g}", doublesStruct.a, doublesStruct.b, doublesStruct.c, doublesStruct.d);
    
    NSLog(@"6: %g", double6);
    NSLog(@"7: %g", double7);
    NSLog(@"8: %g", double8);
    NSLog(@"9: %g", double9);
    NSLog(@"10: %g", double10);
    
    NSLog(@"------------------------");
    
}

//-------------------------------------------------------------------------------------------
#pragma mark - Test 3
//-------------------------------------------------------------------------------------------


- (void)callTestMethod3
{
    SEL selector = @selector(test3MethodWithDouble1:double2:double3:double4:double5:double6:doublesStruct:double7:double8:double9:double10:);
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
    invocation.selector = selector;
    invocation.target = self;
    
    Float64 value = 1;
    [invocation setArgument:&value atIndex:2];
    value = 2;
    [invocation setArgument:&value atIndex:3];
    value = 3;
    [invocation setArgument:&value atIndex:4];
    value = 4;
    [invocation setArgument:&value atIndex:5];
    value = 5;
    [invocation setArgument:&value atIndex:6];
    value = 6;
    [invocation setArgument:&value atIndex:7];
    
    FourDoubles structure = { 10, 20, 30, 40 };
    [invocation setArgument:&structure atIndex:8];
    
    value = 7;
    [invocation setArgument:&value atIndex:9];
    value = 8;
    [invocation setArgument:&value atIndex:10];
    value = 9;
    [invocation setArgument:&value atIndex:11];
    value = 10;
    [invocation setArgument:&value atIndex:12];
    
    [invocation invoke];
}

- (void)test3MethodWithDouble1:(Float64)double1
                       double2:(Float64)double2
                       double3:(Float64)double3
                       double4:(Float64)double4
                       double5:(Float64)double5
                       double6:(Float64)double6
                 doublesStruct:(FourDoubles)doublesStruct
                       double7:(Float64)double7
                       double8:(Float64)double8
                       double9:(Float64)double9
                      double10:(Float64)double10
{
    NSLog(@"-------- TEST3 ---------");
    NSLog(@"1: %g", double1);
    NSLog(@"2: %g", double2);
    NSLog(@"3: %g", double3);
    NSLog(@"4: %g", double4);
    NSLog(@"5: %g", double5);
    NSLog(@"6: %g", double6);
    
    NSLog(@"Structure = {%g, %g, %g, %g}", doublesStruct.a, doublesStruct.b, doublesStruct.c, doublesStruct.d);

    NSLog(@"7: %g", double7);
    NSLog(@"8: %g", double8);
    NSLog(@"9: %g", double9);
    NSLog(@"10: %g", double10);
    
    NSLog(@"------------------------");
    
}

//-------------------------------------------------------------------------------------------
#pragma mark - Test 4
//-------------------------------------------------------------------------------------------


- (void)callTestMethod4
{
    SEL selector = @selector(test4MethodWithDouble1:double2:double3:double4:double5:doublesStruct:);
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
    invocation.selector = selector;
    invocation.target = self;
    
    Float64 value = 1;
    [invocation setArgument:&value atIndex:2];
    value = 2;
    [invocation setArgument:&value atIndex:3];
    value = 3;
    [invocation setArgument:&value atIndex:4];
    value = 4;
    [invocation setArgument:&value atIndex:5];
    value = 5;
    [invocation setArgument:&value atIndex:6];
    
    UIEdgeInsets structure =  UIEdgeInsetsMake(10, 20, 30, 40);
    [invocation setArgument:&structure atIndex:7];
    
    
    [invocation invoke];
}

- (void)test4MethodWithDouble1:(Float64)double1
                       double2:(Float64)double2
                       double3:(Float64)double3
                       double4:(Float64)double4
                       double5:(Float64)double5
                 doublesStruct:(UIEdgeInsets)doublesStruct
{
    NSLog(@"-------- TEST4 ---------");
    NSLog(@"1: %g", double1);
    NSLog(@"2: %g", double2);
    NSLog(@"3: %g", double3);
    NSLog(@"4: %g", double4);
    NSLog(@"5: %g", double5);
    
    NSLog(@"Structure = %@", NSStringFromUIEdgeInsets(doublesStruct));
    
    
    NSLog(@"------------------------");
    
}



@end
