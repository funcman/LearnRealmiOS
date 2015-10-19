//
//  FXPerson.h
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import <Realm/Realm.h>

@class FXFamily;
@class FXCar;

@interface FXPerson : RLMObject

@property FXFamily* family;

@property NSString* name;
@property NSInteger age;

@property FXCar*    car;

@property NSInteger tmp;

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age family:(FXFamily*)family car:(FXCar*)car;

@end

RLM_ARRAY_TYPE(FXPerson)
