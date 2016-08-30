//
//  ViewController.m
//  KVOWithKVC
//
//  Created by shine-team2 on 16/8/29.
//  Copyright © 2016年 ShowTime. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "ChangeValueCtrl.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *changeBtn;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (nonatomic, strong) Student *student;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _student = [[Student alloc]init];
    [_student setName:@"RiversLau"];
    
    [_student addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

- (IBAction)didChange:(id)sender {
    
    ChangeValueCtrl *changeCtrl = [[ChangeValueCtrl alloc]init];
    changeCtrl.student = self.student;
    [self.navigationController pushViewController:changeCtrl animated:YES];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"name"]) {
        self.nameLabel.text = [_student valueForKey:@"name"];
    }
}
@end
