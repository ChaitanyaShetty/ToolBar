//
//  ViewController.h
//  ToolBar
//
//  Created by chaitanya on 23/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIToolbar *toolbar;
@property (strong, nonatomic) IBOutlet UITextField *tf1;
- (IBAction)TapGesture:(id)sender;
- (IBAction)DoneButton:(id)sender;
- (IBAction)CancelButton:(id)sender;
- (IBAction)DatePickerButton:(id)sender;

@end

