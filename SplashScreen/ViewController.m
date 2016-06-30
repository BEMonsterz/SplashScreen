//
//  ViewController.m
//  SplashScreen
//
//  Created by Bryan Ayllon on 6/29/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadedFirst];
    
    

}

-(void) loadedFirst{
    if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults]
                                objectForKey:@"aValue"]]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"aValue"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    splash = [[UIView alloc] initWithFrame:CGRectMake(0,0 ,self.view.frame.size.width,self.view.frame.size.height)];
        //rgb(66, 165, 245)
    splash.backgroundColor = [UIColor colorWithRed:66/255.0 green:165/255.0 blue:245/255.0 alpha:1.0];

         [self.view addSubview:splash];

        
    splash.alpha = 1.0f;
    [UIView animateWithDuration:0.5 delay:4.0 options:0 animations:^{
        splash.alpha = 0.0f;
    } completion:^(BOOL finished) {
        splash.hidden = YES;
    }];
        

        welcomeScreen = [[UILabel alloc]initWithFrame:CGRectMake(145, 313, 125, 40 )];
        
        [welcomeScreen setTextColor:[UIColor whiteColor]];
        
        [welcomeScreen setText:@"Welcome!"];
        [welcomeScreen setFont:[UIFont systemFontOfSize:20]];
        
        
        
        welcomeScreen.alpha = 0.0f;
        [UIView animateWithDuration:0.5 delay:1.0 options:0 animations:^{
            welcomeScreen.alpha = 1.0f;
        } completion:^(BOOL finished) {
            welcomeScreen.alpha = 1.0f;
            [UIView animateWithDuration:0.5 delay:1.0 options:0 animations:^{
                welcomeScreen.alpha = 0.0f;
            } completion:^(BOOL finished) {
                welcomeScreen.hidden = YES;
            }];
        }];

        
        
        
        
        
 [splash addSubview:welcomeScreen];
}

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
