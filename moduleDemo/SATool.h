//
//  SATool.h
//  moduleDemo
//
//  Created by jefactoria on 2017/4/18.
//  Copyright © 2017年 sallen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SATool : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
