//
//  Bars.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Bars.h"
#import "Bar.h"

@interface Bars ()

@property (nonatomic, strong) NSArray *barsList;
@property (nonatomic) NSUInteger currentBarIndex;

@end

@implementation Bars

- (id)initWithFile:(NSString *)fileName {
    self = [super init];
    
    if (self) {
        NSString *fileNameAndPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
        NSArray *arrayFromFile = [NSArray arrayWithContentsOfFile:fileNameAndPath];
    
        NSMutableArray *barsArrayFromFile = [[NSMutableArray alloc] init];
        for (NSDictionary *dictionary in arrayFromFile) {
            Bar *bar = [[Bar alloc] initWithName:dictionary[@"name"] andAddress:dictionary[@"address"] andLatitude:[dictionary[@"latitude"] floatValue] andLenght:[dictionary[@"length"] floatValue]];
        
            bar.description = dictionary[@"description"];
            bar.image = dictionary[@"image"];
            bar.rate = [dictionary[@"rate"] integerValue];
        
            [barsArrayFromFile addObject:bar];
        }
    
        _barsList = barsArrayFromFile;
        _currentBarIndex = 0;
    }
    
    return self;
}

- (NSArray *)barsList{
    return _barsList;
}

- (Bar *)nextBar {
    self.currentBarIndex++;
    if (self.currentBarIndex == [self.barsList count]) {
        self.currentBarIndex = 0;
        return [self.barsList firstObject];
    }
    
    return [self.barsList objectAtIndex:self.currentBarIndex];
}

- (Bar *)previousBar {
    self.currentBarIndex--;
    if (self.currentBarIndex == -1) {
        self.currentBarIndex = [self.barsList count] - 1;
        return [self.barsList lastObject];
    }
    
    return [self.barsList objectAtIndex:self.currentBarIndex];
}

@end
