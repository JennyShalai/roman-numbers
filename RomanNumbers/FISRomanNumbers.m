//
//  FISRomanNumbers.m
//  RomanNumbers
//
//  Created by Jenny on 6/16/16.
//  Copyright © 2016 FISRomanNumbers. All rights reserved.
//

#import "FISRomanNumbers.h"

@implementation FISRomanNumbers

- (instancetype)init {
    self = [super init];
    return self;
}

- (NSArray *)ConvertNumberToArrayOfDigits:(NSUInteger)number {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    while (number > 0) {
        [result addObject:@(number % 10)];
        number = number / 10;
    }
    return result;
}

- (NSString *)convertArrayOfDigitsToRomanNumber:(NSArray *)arrayDigits {
    NSString *result = @"";
    NSUInteger firstDigit = [arrayDigits[0] integerValue];
    NSUInteger secondDigit = [arrayDigits[1] integerValue];
    NSUInteger thirdDigit = [arrayDigits[2] integerValue];
    
    
    
    if(thirdDigit == 9){
        result = [result stringByAppendingString:@"CM"];
    } else if (thirdDigit < 4) {
        while (thirdDigit > 0) {
            result = [result stringByAppendingString:@"C"];
            thirdDigit--;
        }
    } else {
        result = [result stringByAppendingString:@"D"];
        if(thirdDigit < 5){
            result = [@"C" stringByAppendingString:result];
        } else {
            while (thirdDigit > 5) {
                result = [result stringByAppendingString:@"C"];
                thirdDigit--;
            }
        }
        
    }
    
    
    
    
    
    
    if(secondDigit == 9){
        result = [result stringByAppendingString:@"XC"];
    } else if (secondDigit < 4) {
        while (secondDigit > 0) {
            result = [result stringByAppendingString:@"X"];
            secondDigit--;
        }
    } else {
        result = [result stringByAppendingString:@"L"];
        if(secondDigit < 5){
            result = [@"X" stringByAppendingString:result];
        } else {
            while (secondDigit > 5) {
                result = [result stringByAppendingString:@"X"];
                secondDigit--;
            }
        }
        
    }
    
    
    
    
    if(firstDigit == 9){
        result = [result stringByAppendingString:@"IX"];
    } else if (firstDigit < 4) {
        while (firstDigit > 0) {
            result = [result stringByAppendingString:@"I"];
            firstDigit--;
        }
    } else {
        result = [result stringByAppendingString:@"V"];
        if(firstDigit < 5){
            result = [@"I" stringByAppendingString:result];
        } else {
            while (firstDigit > 5) {
                result = [result stringByAppendingString:@"I"];
                firstDigit--;
            }
        }
    
    }
    
    
    
    
    
    
    return result;
}

@end
