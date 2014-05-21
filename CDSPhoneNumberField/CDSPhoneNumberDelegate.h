//
//  CDSPhoneNumberDeleate.h
//  Groot
//
//  Created by Chris Anderson on 5/21/14.
//  Copyright (c) 2014 Chris Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDSPhoneNumberDelegate : NSObject <UITextFieldDelegate>

@property (strong, nonatomic) UITextField *textField;

- (NSString *)number;
- (NSString *)formatNumber:(NSString *)mobileNumber;

@end
