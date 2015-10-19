//
//  FXCar.h
//  LearnRealmiOS
//
//  Created by funcman on 15/10/19.
//  Copyright © 2015 funcman. All rights reserved.
//

#import "RLMObject.h"
#import "FXPerson.h"

@interface FXCar : RLMObject

@property NSString*             licensePlate;
@property RLMArray<FXPerson>*   owers;

@end
