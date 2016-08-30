//
//  ChangeValueCtrl.m
//  KVOWithKVC
//
//  Created by shine-team2 on 16/8/29.
//  Copyright © 2016年 ShowTime. All rights reserved.
//

#import "ChangeValueCtrl.h"

@interface ChangeValueCtrl ()

@end

@implementation ChangeValueCtrl

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.student.name = @"Other Value";
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

@end
