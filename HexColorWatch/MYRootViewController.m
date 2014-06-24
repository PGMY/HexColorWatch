//
//  MYRootViewController.m
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

#import "MYRootViewController.h"
#import "HexColorView.h"
#import "UIColor+Hex.h"

@interface MYRootViewController ()
@property (nonatomic, strong) HexColorView *hexColorView;
@property (nonatomic, strong) UILabel *hexWatchLabel;
//@property (nonatomic, strong) NSDate* startDate;
@property (nonatomic, strong) NSTimer* timer;
@end

@implementation MYRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        CGRect mainRect = [UIScreen mainScreen].bounds;
        self.hexColorView = [[HexColorView alloc] initWithFrame:mainRect];
        [self.view addSubview:self.hexColorView];
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                  target:self
                                                selector:@selector(onTimer:)
                                                userInfo:nil
                                                 repeats:YES];
        
        self.hexWatchLabel = [[UILabel alloc] initWithFrame:CGRectMake(10,mainRect.size.height/2-50 , mainRect.size.width-10, 100)];
        self.hexWatchLabel.font = [UIFont fontWithName:@"Apple SD Gothic Neo" size:70];
        self.hexWatchLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:self.hexWatchLabel];
        
//        self.startDate = [NSDate date];
    }
    return self;
}
-(void)onTimer:(NSTimer*)timer
{
//    float second = [[NSDate date] timeIntervalSinceReferenceDate]; //timeIntervalSinceReferenceDate:self.startDate];
//    NSDate *date = [NSDate date];
//    date.
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat  = @"HHmmss";
    NSString *str = [df stringFromDate:[NSDate date]];
//    NSLog(@"%@",str);
    self.hexColorView.backgroundColor = [UIColor colorWithHexString:[NSString stringWithFormat:@"%@FF",str]];
    self.hexWatchLabel.text = [NSString stringWithFormat:@"#%@",str];
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
