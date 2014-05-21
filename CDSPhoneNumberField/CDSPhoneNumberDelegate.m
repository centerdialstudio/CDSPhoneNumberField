//
//  CDSPhoneNumberDeleate.m
//  Groot
//
//  Created by Chris Anderson on 5/21/14.
//  Copyright (c) 2014 Chris Anderson. All rights reserved.
//

#import "CDSPhoneNumberDelegate.h"

@implementation CDSPhoneNumberDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSInteger length = [self getLength:textField.text];
    
    if (length == 3) {
        NSString *num = [self formatNumber:textField.text];
        textField.text = [NSString stringWithFormat:@"(%@) ", num];
        if(range.length > 0) {
            textField.text = [NSString stringWithFormat:@"%@", [num substringToIndex:3]];
        }
    } else if(length == 6) {
        NSString *num = [self formatNumber:textField.text];
        textField.text = [NSString stringWithFormat:@"(%@) %@-", [num  substringToIndex:3], [num substringFromIndex:3]];
        if (range.length > 0) {
            textField.text = [NSString stringWithFormat:@"(%@) %@", [num substringToIndex:3], [num substringFromIndex:3]];
        }
    } else if(length == 10) {
        textField.text = [self formatNumber:textField.text];
    }
    return YES;
}

- (NSString *)number
{
    return [self formatNumber:_textField.text];
}

- (NSString *)formatNumber:(NSString *)mobileNumber
{
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"(" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@")" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@" " withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"-" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"+" withString:@""];
    
    return mobileNumber;
}


- (NSInteger)getLength:(NSString *)mobileNumber
{
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"(" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@")" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@" " withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"-" withString:@""];
    mobileNumber = [mobileNumber stringByReplacingOccurrencesOfString:@"+" withString:@""];
    
    NSInteger length = [mobileNumber length];
    return length;
}

@end
