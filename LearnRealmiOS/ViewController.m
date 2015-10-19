//
//  ViewController.m
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import "ViewController.h"
#import "FXPerson.h"
#import "FXFamily.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)run:(id)sender {
    FXFamily* family    = [[FXFamily alloc]init];
    family.name = @"Ho";

    FXPerson* father    = [[FXPerson alloc]initWithName:@"Peter"
                                                    age:53
                                                 family:family];;
    FXPerson* mother    = [[FXPerson alloc]initWithName:@"Mary"
                                                    age:45
                                                 family:family];
    FXPerson* son       = [[FXPerson alloc]initWithName:@"Bill"
                                                    age:20
                                                 family:family];

    RLMRealm* realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:father];
    [realm addObject:mother];
    [realm addObject:son];
    [realm addObject:family];
    [realm commitWriteTransaction];
}

@end
