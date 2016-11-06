//
//  FirstViewController.m
//  Test
//
//  Created by Alex Mitchell on 10/26/16.
//  Copyright © 2016 Grinnell AppDev. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *year;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation FirstViewController
- (IBAction)didTapButton:(id)sender {
  NSString *first = _firstNameField.text;
  NSString *last = _lastNameField.text;
  NSString *yearTick = [self classTickFromYear:_year.text];
  
  NSString *outputString = [NSString stringWithFormat:@"%@ %@ %@", first, last, yearTick];
  _outputLabel.text = outputString;
}

- (NSString *)classTickFromYear:(NSString *)year {
  return [NSString stringWithFormat:@"'%@", [year substringFromIndex:2]];
}


@end
