//
//  AddFundsViewController.m
//  FOMO
//
//  Created by admin on 10/25/17.
//  Copyright © 2017 kahshe. All rights reserved.
//

#import "AddFundsViewController.h"

@interface AddFundsViewController ()

@property (weak, nonatomic) IBOutlet UIView *header;
@property (weak, nonatomic) IBOutlet UIButton *xButton;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;
@property (weak, nonatomic) IBOutlet UIView *fundDisplayView;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation AddFundsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupHeader];
    [self setupButtons];
    [self setupFundDisplayView];
}

- (void)setupHeader{
    self.header.clipsToBounds = NO;
    self.header.layer.masksToBounds = NO;
    self.header.layer.shadowColor = [UIColor blackColor].CGColor;
    self.header.layer.shadowOpacity = 0.5f;
    self.header.layer.shadowRadius = 1.5f;
    self.header.layer.shadowOffset = CGSizeMake(0.0f, 2.0f);
}


- (void)setupFundDisplayView {
    self.fundDisplayView.layer.borderWidth = 1;
    self.fundDisplayView.layer.borderColor = [UIColor blackColor].CGColor;
    self.fundDisplayView.layer.cornerRadius = 5;
}

- (void)setupButtons {
    self.changeButton.layer.cornerRadius = self.changeButton.bounds.size.height/2;
    self.closeButton.layer.cornerRadius = self.closeButton.bounds.size.height/2;
    self.confirmButton.layer.cornerRadius = self.confirmButton.bounds.size.height/2;
    self.confirmButton.layer.borderColor = [UIColor colorWithRed:255.0/255.0 green:130.0/255.0 blue:0 alpha:1].CGColor;
    self.confirmButton.layer.borderWidth = 1;
}

- (void)dismissMyself {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)confirmButtonTapped:(id)sender {
    [self dismissMyself];
}
- (IBAction)closeButtonTapped:(id)sender {
    [self dismissMyself];
}
- (IBAction)xButtonTapped:(id)sender {
    [self dismissMyself];
}

@end
