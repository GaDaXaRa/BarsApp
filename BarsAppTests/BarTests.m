//
//  BarTests.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bar.h"

@interface BarTests : XCTestCase

@end

@implementation BarTests

- (void)testCanInitBar{
    Bar *bar = [[Bar alloc] init];
    XCTAssertNotNil(bar, @"");
}

- (void)testCanInitBarWithName{
    NSString *name = @"Bar Pepe";
    Bar *bar = [[Bar alloc] initWithName:name];
    XCTAssertEqualObjects(bar.name, name, @"");

}

- (void)testCanInitBarWithNameAndAddress{
    NSString *name = @"Bar Pepe";
    NSString *address = @"Alameda 22";
    Bar *bar = [[Bar alloc] initWithName:name andAddress:address];
    XCTAssertEqualObjects(bar.name, name, @"");
    XCTAssertEqualObjects(bar.address, address, @"");
    
}

- (void)testCanInitBarWithNameAndAddressAndLatitudeAndLength{
    NSString *name = @"Bar Pepe";
    NSString *address = @"Alameda 22";
    CGFloat latitude = 22.32;
    CGFloat length = 34.33;
    Bar *bar = [[Bar alloc] initWithName:name andAddress:address andLatitude:latitude andLenght:length];
    XCTAssertEqualObjects(bar.name, name, @"");
    XCTAssertEqualObjects(bar.address, address, @"");
    XCTAssertEqual(latitude, bar.latitude, @"");
    XCTAssertEqual(length, bar.length, @"");
}

@end
