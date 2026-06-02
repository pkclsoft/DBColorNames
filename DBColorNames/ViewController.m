//
//  ViewController.m
//  DBColorNames
//
//  Created by Daniel Beard on 10/16/14.
//  Copyright (c) 2014 DanielBeard. All rights reserved.
//

#import "ViewController.h"
#import "DBColorNames.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) DBColorNames *colorNames;
@property (weak, nonatomic) IBOutlet UILabel *redValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueValueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.colorNames = [DBColorNames new];
    [self.redSlider setValue:1.0f];
    [self.greenSlider setValue:1.0f];
    [self.blueSlider setValue:1.0f];
    
    [self sliderValuesChanged:nil];
    
}

- (UIColor *)updateViewBackgroundColor {
    UIColor *color = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1.0f];
    self.view.backgroundColor = color;
    self.redValueLabel.text = [NSString stringWithFormat:@"%02x", (int)(_redSlider.value * 255.0)];
    self.greenValueLabel.text = [NSString stringWithFormat:@"%02x", (int)(_greenSlider.value * 255.0)];
    self.blueValueLabel.text = [NSString stringWithFormat:@"%02x", (int)(_blueSlider.value * 255.0)];
    return color;
}

- (IBAction)sliderValuesChanged:(id)sender {
    NSLog(@"");
    UIColor *color = [self updateViewBackgroundColor];
    self.nameLabel.text = [self.colorNames nameForColor:color];
    
    
}

@end
