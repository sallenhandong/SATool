//
//  SATool.m
//  moduleDemo
//
//  Created by jefactoria on 2017/4/18.
//  Copyright © 2017年 sallen. All rights reserved.
//

#import "SATool.h"
@interface SATool ()
@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end
@implementation SATool
+ (SATool *)sharedInstance
{
    static SATool * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}





@end
