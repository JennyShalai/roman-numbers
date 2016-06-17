//
//  FISRomanNumbers.h
//  RomanNumbers
//
//  Created by Jenny on 6/16/16.
//  Copyright © 2016 FISRomanNumbers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISRomanNumbers : NSObject

- (instancetype)init;
- (NSArray *)ConvertNumberToArrayOfDigits:(NSUInteger)number;
- (NSString *)convertArrayOfDigitsToRomanNumber:(NSArray *)array;

@end
