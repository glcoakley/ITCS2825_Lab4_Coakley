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
@property (weak, nonatomic) IBOutlet UIStepper *stpPeopleStepper;

@property (weak, nonatomic) IBOutlet UILabel *lblTipAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblTotalAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblTotalBillAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblNumberOfPeople;

- (IBAction)updatePeopleCount:(UIStepper *)sender;
- (IBAction)GetSliderValue:(UISlider *)sender;
- (IBAction)tipEditingEnded:(UITextField *)sender;
- (IBAction)amountEditingEnded:(UITextField *)sender;
- (IBAction)btnCalculateTip:(UIButton *)sender;


@end

int intTipInPct;
int numberOfPeople;
double dblAmount;


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    numberOfPeople = (int)self.stpPeopleStepper.minimumValue;
    self.lblNumberOfPeople.text = [NSString stringWithFormat:@"%i", numberOfPeople];
    
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
- (IBAction)updatePeopleCount:(UIStepper *)sender
{
    numberOfPeople = (int)self.stpPeopleStepper.value;
    self.lblNumberOfPeople.text = [NSString stringWithFormat:@"%i", numberOfPeople];
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
    dblAmount = number;
    
}

- (IBAction)btnCalculateTip:(UIButton *)sender
{
    double tipPct = (double)intTipInPct;
    double tipAmount = dblAmount * tipPct;
    int intTipAmount = (int)(tipAmount*100.0 +0.5);
    tipAmount = ((double)intTipAmount)/100.0;
    double totalAmount = dblAmount + tipAmount;
    self.lblTipAmount.text = [NSString stringWithFormat:@"%.2f", tipAmount;
}
@end
