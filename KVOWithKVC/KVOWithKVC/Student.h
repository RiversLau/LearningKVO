//
//  Student.h
//  KVOWithKVC
//
//  Created by shine-team2 on 16/8/29.
//  Copyright © 2016年 ShowTime. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Area.h"

@interface Student : NSObject

@property (nonatomic, copy) NSString *sid;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) Area *area;

@end
