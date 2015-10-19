//
//  FXPerson.m
//  LearnRealmiOS
//
//  Created by funcman on 15/10/16.
//  Copyright © 2015 funcman. All rights reserved.
//

#import "FXPerson.h"
#import "FXFamily.h"

@implementation FXPerson

+ (NSArray*)requiredProperties {
    return @[@"name"];
}

+ (NSArray *)indexedProperties {
    return @[@"name"];
}

+ (NSDictionary *)defaultPropertyValues {
    return @{};
}

+ (NSString *)primaryKey {
    return @"name";
}

+ (NSArray *)ignoredProperties {
    return @[@"tmp"];
}

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age family:(FXFamily*)family {
    self = [super init];
    if (self) {
        _name   = name;
        _age    = age;
        _family = family;
        [_family.members addObject:self];
    }
    return self;
}

@end
