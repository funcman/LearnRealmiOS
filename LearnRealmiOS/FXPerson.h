//
//  FXPerson.h
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import <Realm/Realm.h>

@class FXFamily;

@interface FXPerson : RLMObject

@property(nonatomic, strong)    NSString*   name;
@property(nonatomic, assign)    NSInteger   age;

@property(nonatomic, strong)    FXFamily*   family;

@end
