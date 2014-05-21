//
//  CDSPhoneNumberField.m
//
//  Created by Chris Anderson on 5/20/14.
//  Copyright (c) 2014 Chris Anderson. All rights reserved.
//

#import "CDSPhoneNumberField.h"

@implementation CDSPhoneNumberField
{
    CDSPhoneNumberDelegate *phoneNumberDelegate;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // load picker
        [self initializePhoneField];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // load picker
        [self initializePhoneField];
    }
    return self;
}

- (void)initializePhoneField
{
    phoneNumberDelegate = [[CDSPhoneNumberDelegate alloc] init];
    self.delegate = phoneNumberDelegate;
}

- (NSString *)number
{
    return [phoneNumberDelegate number];
}

@end