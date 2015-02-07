//
//  ViewController.m
//  ITCS2825_Lab4_Coakley
//
//  Created by ITCS2825 Kozlevcar on 2/6/15.
//  Copyright (c) 2015 lcc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtAmount;
@property (weak, nonatomic) IBOutlet UITextField *txtTipPct;
@property (weak, nonatomic) IBOutlet UISlider *sldValue;
@property (weak, nonatomic) IBOutlet UILabel *lblNumPeople;

- (IBAction)tipEditingEnded:(UITextField *)sender;
- (IBAction)amountEditingEnded:(UITextField *)sender;


@end

int intTipInPct;
double dblAmount;


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initialize
{
    
}

- (void) syncTipData
{
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.txtAmount endEditing:YES];
    [self.txtTipPct endEditing:YES];
}
- (IBAction)tipEditingEnded:(UITextField *)sender
{
}

- (IBAction)amountEditingEnded:(UITextField *)sender
{
}
@end
