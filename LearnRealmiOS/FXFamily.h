//
//  FXFamily.h
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import <Realm/Realm.h>
#import "FXPerson.h"

@interface FXFamily : RLMObject

@property NSString*             name;
@property RLMArray<FXPerson>*   members;

@end
