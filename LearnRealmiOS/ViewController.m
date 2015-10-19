//
//  ViewController.m
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import "ViewController.h"

#import "FXFamily.h"
#import "FXPerson.h"
#import "FXCar.h"

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

    FXCar* toyota       = [[FXCar alloc]init];
    toyota.licensePlate = @"皖A88888";
    FXCar* buick        = [[FXCar alloc]init];
    buick.licensePlate  = @"皖A77777";

    FXPerson* father    = [[FXPerson alloc]initWithName:@"Peter"
                                                    age:53
                                                 family:family
                                                    car:toyota
    ];
    FXPerson* mother    = [[FXPerson alloc]initWithName:@"Mary"
                                                    age:45
                                                 family:family
                                                    car:toyota
    ];
    FXPerson* son       = [[FXPerson alloc]initWithName:@"Bill"
                                                    age:20
                                                 family:family
                                                    car:buick
    ];
    FXPerson* daughter  = [[FXPerson alloc]initWithName:@"Jenny"
                                                    age:17
                                                 family:family
                                                    car:nil
    ];

    RLMRealm* realm     = [RLMRealm defaultRealm];
    NSPredicate* pred   = [NSPredicate predicateWithFormat:@"name = %@", @"Ho"];

    RLMResults* familys = [FXFamily objectsWithPredicate:pred];
    if (familys.count == 0) {
        [realm beginWriteTransaction];
        [realm addObject:family];
        [realm commitWriteTransaction];
    }
}

@end
