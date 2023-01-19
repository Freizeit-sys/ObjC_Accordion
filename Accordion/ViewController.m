//
//  ViewController.m
//  Accordion
//
//  Created by admin on 2023/01/19.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) IBOutlet NSLayoutConstraint *labelViewHeightAnchor;
//@property (nonatomic) IBOutlet NSLayoutConstraint *textLabelHeightAnchor;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *showButtom;
@property (weak, nonatomic) IBOutlet UIButton *showHideButton;
@property (nonatomic) BOOL isExpand;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textLabel.numberOfLines = 0;
    [self.textLabel sizeToFit];
    self.labelViewHeightAnchor.constant = 40;
    //self.textLabelHeightAnchor.constant = ;
    //self.textLabel.hidden = YES;
    
    self.isExpand = NO;
}

- (IBAction)handleOpenAccordion:(id)sender {
    NSLog(@"tap");
    // button top anchor = NO;
    [self.view layoutIfNeeded];
    
    if (self.isExpand) {
        NSLog(@"yes");
        //[NSLayoutConstraint activateConstraints:@[self.buttonTopAnchor]];
        //self.textLabel.numberOfLines = 1;
        //[self.textLabel sizeToFit];
        //self.textLabelHeightAnchor.constant = 31;
        self.labelViewHeightAnchor.constant = 40;
        [self.showHideButton setTitle:@"Show" forState:UIControlStateNormal];
    } else {
        NSLog(@"no");
        //[NSLayoutConstraint deactivateConstraints:@[self.buttonTopAnchor]];
        self.textLabel.numberOfLines = 0;
        //self.textLabelHeightAnchor.constant = self.textLabel.frame.size.height;
        self.labelViewHeightAnchor.constant = 140;
        [self.showHideButton setTitle:@"Hide" forState:UIControlStateNormal];
    }
    
    // label height anchor += 100;
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
    
    
    // button top off
    // label height on
    
    // label height off
    // button top on
    
    self.isExpand = !self.isExpand;
}

@end
