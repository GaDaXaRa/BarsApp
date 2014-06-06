//
//  Bar.h
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bar : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *address;
@property(nonatomic) NSUInteger rate;
@property(strong, nonatomic) NSString *description;
@property(strong, nonatomic) NSString *image;

@property(nonatomic) CGFloat latitude;
@property(nonatomic) CGFloat length;

#pragma mark - initializers

- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address;

//Designated initializer
- (id)initWithName:(NSString *)name andAddress:(NSString *)address andLatitude:(CGFloat)latitude andLenght:(CGFloat)length;

@end
