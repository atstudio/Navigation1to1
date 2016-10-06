//
//  ViewController.m
//  EX-W05-03
//
//  Created by 김티버 on 2016. 10. 6..
//  Copyright © 2016년 김티버. All rights reserved.
//

#import "ViewController.h"
#import "OrderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pizzaChicken;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toOrderView"]) {
        OrderViewController *vc = [segue destinationViewController];
        
        NSString *ordered = [pizzaChicken titleForSegmentAtIndex:[pizzaChicken selectedSegmentIndex]];
        vc.title = ordered;
        ordered = [ordered stringByAppendingString:@", 맞나요?"];
        
        vc.info = [NSString stringWithFormat:@"감사합니다!! \n주문내역 : %@", ordered];
    }
}


@end
