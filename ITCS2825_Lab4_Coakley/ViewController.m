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

- (IBAction)GetSliderValue:(UISlider *)sender;
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
- (IBAction)GetSliderValue:(UISlider *)sender
{
    intTipInPct = (int)self.sldValue.value;
    self.txtTipPct.text = [NSString stringWithFormat:@"%i", intTipInPct];
    
}

- (IBAction)tipEditingEnded:(UITextField *)sender
{
    intTipInPct =[self.txtTipPct.text intValue];
    if ( intTipInPct < (int)self.sldValue.minimumValue )
    {
        intTipInPct = self.sldValue.minimumValue;
    }
    else if (intTipInPct > self.sldValue.maximumValue)
    {
        intTipInPct = (int)self.sldValue.maximumValue;
    }
    self.txtTipPct.text = [NSString stringWithFormat:@"%i", intTipInPct];
    self.sldValue.value = (float)intTipInPct;
}

- (IBAction)amountEditingEnded:(UITextField *)sender
{
    double number = [self.txtAmount.text doubleValue];
    double testTip = number*.15;
    self.txtTipPct.text = [NSString stringWithFormat:@"%.2f", testTip];
    
}
@end
