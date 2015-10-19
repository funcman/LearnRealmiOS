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

@property NSString* name;
@property NSInteger age;
@property NSInteger tmp;

@property FXFamily* family;

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age family:(FXFamily*)family;

@end
