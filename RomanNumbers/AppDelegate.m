//
//  AppDelegate.m
//  RomanNumbers
//
//  Created by Jenny on 6/16/16.
//  Copyright © 2016 FISRomanNumbers. All rights reserved.
//

#import "AppDelegate.h"
#import "FISRomanNumbers.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISRomanNumbers *myNumber = [[FISRomanNumbers alloc] init];
    NSArray *arrayOfDigits = [myNumber ConvertNumberToArrayOfDigits:478];
    NSLog(@"%@", [myNumber convertArrayOfDigitsToRomanNumber:arrayOfDigits]);
    
    
    
    
    
    return YES;
}


@end
