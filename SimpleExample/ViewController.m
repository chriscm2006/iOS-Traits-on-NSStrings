//
//  ViewController.m
//  SimpleExample
//
//  Created by Chris McMeeking on 8/14/15.
//  Copyright (c) 2015 Deque Systems Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segMentedControl;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString* mySegmentLabel = @"Segment1";
    mySegmentLabel.accessibilityLabel = @"This accessibility label will work, but it still has the trait of button, not a link!";

    //This is also ignored, the first segment still has the trait of a button!
    mySegmentLabel.accessibilityTraits = UIAccessibilityTraitLink;
    [self.segMentedControl removeAllSegments];
    [self.segMentedControl insertSegmentWithTitle:mySegmentLabel atIndex:0 animated:NO];
    
    NSString* myLabelText = @"Place Holder Text";
    
    myLabelText.accessibilityLabel = @"This clearly does not work";
    
    self.textField.placeholder = myLabelText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
