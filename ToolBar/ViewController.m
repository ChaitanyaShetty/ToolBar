//
//  ViewController.m
//  ToolBar
//
//  Created by chaitanya on 23/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)TapGesture:(id)sender {
    _datePicker.hidden = YES;
    _toolbar.hidden = YES;
    _tf1.background = [UIImage imageNamed:@"gray-1.png"];

    
//    
//    CALayer *border = [CALayer layer];
//    CGFloat borderWidth = 2;
//    border.borderColor = [UIColor redColor].CGColor;
//    border.frame = CGRectMake(0, _tf1.frame.size.height - borderWidth, _tf1.frame.size.width, _tf1.frame.size.height);
//    border.borderWidth = borderWidth;
//    [_tf1.layer addSublayer:border];
//    _tf1.layer.masksToBounds = YES;
//
}

- (IBAction)DoneButton:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd : MM : YYYY HH : mm :ss"];
    NSString *dateString = [formatter stringFromDate:self.datePicker.date];
    _tf1.text = dateString;
}

- (IBAction)CancelButton:(id)sender {
    _datePicker.hidden = YES;
    _toolbar.hidden = YES;
    _tf1.text = @"";
    }

- (IBAction)DatePickerButton:(id)sender {
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _datePicker.hidden = false;
    _toolbar.hidden = false;
    _tf1.borderStyle = UITextBorderStyleNone;
    _tf1.background = [UIImage imageNamed:@"lineNew3x-1.png"];
    
//    CALayer *border = [CALayer layer];
//    CGFloat borderWidth = 2;
//    border.borderColor = [UIColor greenColor].CGColor;
//    border.frame = CGRectMake(0, _tf1.frame.size.height - borderWidth, _tf1.frame.size.width, _tf1.frame.size.height);
//    border.borderWidth = borderWidth;
//    [_tf1.layer addSublayer:border];
//    _tf1.layer.masksToBounds = YES;
    return false;
}



-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 2;
    border.borderColor = [UIColor redColor].CGColor;
    border.frame = CGRectMake(0, textField.frame.size.height - borderWidth, _tf1.frame.size.width, _tf1.frame.size.height);
    border.borderWidth = borderWidth;
    [_tf1.layer addSublayer:border];
    _tf1.layer.masksToBounds = YES;
    return YES;
}
@end
