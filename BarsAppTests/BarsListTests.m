//
//  BarsListTests.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bars.h"

@interface BarsListTests : XCTestCase

@end

@implementation BarsListTests

- (void) testCanCreateBarListWithFile {
    Bars *bars = [[Bars alloc] initWithFile:@"bars_list"];
    XCTAssertNotNil(bars.barsList, @"");
    XCTAssertTrue([bars.barsList count] > 0,@"");
    for (Bar *bar in bars.barsList) {
        XCTAssertNotNil(bar, @"");
    }
    
}

- (void)testCanGoNextBar {
    Bars *bars = [[Bars alloc] initWithFile:@"bars_list"];
    Bar *firstBar = [bars.barsList firstObject];
    Bar *nextBar = [bars nextBar];
    XCTAssertNotEqualObjects(firstBar, nextBar, @"");
    
    for (int i = 1; i<[bars.barsList count];i++){
        nextBar = [bars nextBar];
    }
    XCTAssertEqualObjects(firstBar, nextBar, @"");
    
}

- (void)testCanGoPreviousBar {
    Bars *bars = [[Bars alloc] initWithFile:@"bars_list"];
    Bar *lastBar = [bars.barsList lastObject];
    Bar *previousBar = [bars previousBar];
    XCTAssertEqualObjects(lastBar, previousBar, @"");
}

@end
