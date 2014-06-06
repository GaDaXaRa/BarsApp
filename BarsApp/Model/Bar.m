//
//  Bar.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Bar.h"

@implementation Bar

//Designated initializer
- (id)initWithName:(NSString *)name andAddress:(NSString *)address andLatitude:(CGFloat)latitude andLenght:(CGFloat)length {
    self = [super init];
    
    if (self) {
        _name = name;
        _address = address;
        _latitude = latitude;
        _length = length;
    }
    
    return  self;
}

- (id)initWithName:(NSString *)name andAddress:(NSString *)address{
    self = [self initWithName:name andAddress:address andLatitude:0 andLenght:0];
    return self;
}

- (id)initWithName:(NSString *)name{
    self = [self initWithName:name andAddress:nil andLatitude:0 andLenght:0];
    return self;
}



@end
