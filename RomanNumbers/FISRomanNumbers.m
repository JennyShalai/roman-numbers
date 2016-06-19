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
    // PUBLIC METHOD // convertation number into Roman number
- (NSString *)convertNumberToRomanNumber:(NSUInteger)number {
    NSArray *arrayDigits = [self ConvertNumberToArrayOfDigits:number];
    NSString *convertNumber = [self convertArrayOfDigitsToRomanNumber:arrayDigits];
    return convertNumber;

}
    // splite number into single digits
- (NSArray *)ConvertNumberToArrayOfDigits:(NSUInteger)number {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    while (number > 0) {
        [result addObject:@(number % 10)];
        number = number / 10;
    }
    return result;
}
    // convert each digit of ariginal numer itno Roman style
- (NSString *)convertArrayOfDigitsToRomanNumber:(NSArray *)arrayDigits {
    NSString *result = @"";
    
    if([arrayDigits count] > 3) {
        result = [result stringByAppendingString:@"M"];
    }
    if([arrayDigits count] > 2) {
        NSUInteger firstDigit = [arrayDigits[2] integerValue];
        NSString *firstResult = [self convertDigit:firstDigit ToRoman:@[@"C", @"D", @"CM"]];
        result = [result stringByAppendingString:firstResult];
    }
    if([arrayDigits count] > 1) {
        NSUInteger secondDigit = [arrayDigits[1] integerValue];
        NSString *secondResult = [self convertDigit:secondDigit ToRoman:@[@"X", @"L", @"XC"]];
        result = [result stringByAppendingString:secondResult];
    }
    if([arrayDigits count] > 0) {
        NSUInteger thirdDigit = [arrayDigits[0] integerValue];
        NSString *thirdResult = [self convertDigit:thirdDigit ToRoman:@[@"I", @"V", @"IX"]];
        result = [result stringByAppendingString:thirdResult];
    }

    return result;
}
    // "drawing" the current digit into Roman style
- (NSString *)convertDigit:(NSUInteger)digit ToRoman:(NSArray *)letter {
    NSString *result = @"";
    if(digit == 9){
        result = [result stringByAppendingString:letter[2]];
    } else if (digit < 4) {
        while (digit > 0) {
            result = [result stringByAppendingString:letter[0]];
            digit--;
        }
    } else {
        result = [result stringByAppendingString:letter[1]];
        if(digit < 5){
            result = [letter[0] stringByAppendingString:result];
        } else {
            while (digit > 5) {
                result = [result stringByAppendingString:letter[0]];
                digit--;
            }
        }
        
    }
    return result;
}

@end
