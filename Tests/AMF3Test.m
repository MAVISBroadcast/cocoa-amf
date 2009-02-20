//
//  AMF3Test.m
//  CocoaAMF
//
//  Created by Marc Bauer on 20.02.09.
//  Copyright 2009 Fork Unstable Media GmbH. All rights reserved.
//

#import "AMF3Test.h"


@implementation AMF3Test

- (void)testNumber
{
	NSNumber *num = [NSNumber numberWithInt:0];
	STAssertTrue([self assertDataOfFile:@"number_0.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_0.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x35];
	STAssertTrue([self assertDataOfFile:@"number_1.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_1.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x7f];
	STAssertTrue([self assertDataOfFile:@"number_2.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_2.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x80];
	STAssertTrue([self assertDataOfFile:@"number_3.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_3.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0xd4];
	STAssertTrue([self assertDataOfFile:@"number_4.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_4.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x3fff];
	STAssertTrue([self assertDataOfFile:@"number_5.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_5.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x4000];
	STAssertTrue([self assertDataOfFile:@"number_6.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_6.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x1a53f];
	STAssertTrue([self assertDataOfFile:@"number_7.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_7.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x1fffff];
	STAssertTrue([self assertDataOfFile:@"number_8.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_8.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0x200000];
	STAssertTrue([self assertDataOfFile:@"number_9.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_9.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:-0x01];
	STAssertTrue([self assertDataOfFile:@"number_10.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_10.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:-0x2a];
	STAssertTrue([self assertDataOfFile:@"number_11.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_11.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:0xfffffff];
	STAssertTrue([self assertDataOfFile:@"number_12.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_12.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithInt:-0x10000000];
	STAssertTrue([self assertDataOfFile:@"number_13.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_13.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithDouble:0x10000000];
	STAssertTrue([self assertDataOfFile:@"number_14.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_14.amf3"], 
		@"Number data is not equal");
		
	num = [NSNumber numberWithDouble:-0x10000001];
	STAssertTrue([self assertDataOfFile:@"number_15.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_15.amf3"], 
		@"Number data is not equal");
	
	num = [NSNumber numberWithDouble:0.1];
	STAssertTrue([self assertDataOfFile:@"number_16.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_16.amf3"], 
		@"Number data is not equal");
	
	num = [NSNumber numberWithDouble:0.123456789];
	STAssertTrue([self assertDataOfFile:@"number_17.amf3" 
		isEqualTo:num], @"Numbers do not match");
		
	STAssertTrue([self assertEncodedObject:num isEqualToContentsOfFile:@"number_17.amf3"], 
		@"Number data is not equal");
}

- (void)testBoolean
{
	STAssertTrue([self assertDataOfFile:@"boolean_0.amf3" 
		isEqualTo:[NSNumber numberWithBool:YES]], @"Booleans do not match");
		
	STAssertTrue([self assertEncodedObject:[NSNumber numberWithBool:YES] 
		isEqualToContentsOfFile:@"boolean_0.amf3"], @"Boolean data is not equal");
		
	STAssertTrue([self assertDataOfFile:@"boolean_1.amf3" 
		isEqualTo:[NSNumber numberWithBool:NO]], @"Booleans do not match");
		
	STAssertTrue([self assertEncodedObject:[NSNumber numberWithBool:NO] 
		isEqualToContentsOfFile:@"boolean_1.amf3"], @"Boolean data is not equal");
}

- (void)testNull
{
	STAssertTrue([self assertDataOfFile:@"null_0.amf3" 
		isEqualTo:[NSNull null]], @"Could not read null value");
}

- (void)testString
{
	NSString *str = @"hello";
	STAssertTrue([self assertDataOfFile:@"string_0.amf3" 
		isEqualTo:str], @"Strings do not match");
		
	STAssertTrue([self assertEncodedObject:str isEqualToContentsOfFile:@"string_0.amf3"], 
		@"String data is not equal");
		
	str = @"ᚠᛇᚻ";
	STAssertTrue([self assertDataOfFile:@"string_1.amf3" 
		isEqualTo:str], @"Strings do not match");
		
	STAssertTrue([self assertEncodedObject:str isEqualToContentsOfFile:@"string_1.amf3"], 
		@"String data is not equal");
}

@end