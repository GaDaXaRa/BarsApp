//
//  Bars.h
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bar.h"

@interface Bars : NSObject

- (id)initWithFile:(NSString *)fileName;
- (NSArray *)barsList;
- (Bar *)nextBar;
- (Bar *)previousBar;

@end
