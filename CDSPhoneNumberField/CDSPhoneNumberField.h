//
//  CDSPhoneNumberField.h
//
//  Created by Chris Anderson on 5/20/14.
//  Copyright (c) 2014 Chris Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDSPhoneNumberDelegate.h"

@class CDSPhoneNumberField;

@interface CDSPhoneNumberField : UITextField <UITextFieldDelegate>

/// Get pure phone number without formatting
- (NSString *)number;

@end
