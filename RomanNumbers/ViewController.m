//
//  ViewController.m
//  RomanNumbers
//
//  Created by Jenny on 6/16/16.
//  Copyright © 2016 FISRomanNumbers. All rights reserved.
//

#import "ViewController.h"
#import "FISRomanNumbers.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UISlider *scrollValue;
@property (weak, nonatomic) IBOutlet UILabel *arabValue;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onValueChanged:(id)sender {
    self.arabValue.text = [NSString stringWithFormat:@"%lu", (NSUInteger)trunc(self.scrollValue.value)];
}

- (IBAction)scrollValueSet:(id)sender {
    FISRomanNumbers *myNumber = [[FISRomanNumbers alloc] init];
    // NSLog(@"%lu", (NSUInteger)trunc(self.scrollValue.value));
    NSUInteger userValue = (NSUInteger)trunc(self.scrollValue.value);
    NSString *romanResult = [myNumber convertNumberToRomanNumber:userValue];
    self.result.text = romanResult;
}

@end
