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
    FXPerson* father    = [[FXPerson alloc]init];
    FXPerson* mother    = [[FXPerson alloc]init];
    FXPerson* son       = [[FXPerson alloc]init];
    FXFamily* family    = [[FXFamily alloc]init];

    father.name = @"Peter";
    mother.name = @"Mary";
    son.name    = @"Bill";

    father.age  = 53;
    mother.age  = 45;
    son.age     = 20;

    family.name = @"Ho";

    // many to one
    father.family   = family;
    mother.family   = family;
    son.family      = family;
    // one to many
    [family.members addObject:father];
    [family.members addObject:mother];
    [family.members addObject:son];

    RLMRealm* realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:family];
    [realm addObject:mother];
    [realm addObject:son];
    [realm addObject:family];
    [realm commitWriteTransaction];
}

@end
