//
//  FXFamily.h
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import <Realm/Realm.h>

@class FXPerson;

RLM_ARRAY_TYPE(FXPerson)

@interface FXFamily : RLMObject

@property(nonatomic, strong)    NSString*           name;
@property(nonatomic, strong)    RLMArray<FXPerson>* members;

@end
