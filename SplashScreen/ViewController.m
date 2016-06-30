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
    [self loadedSecond];
    
    

}

-(void) loadedFirst{
    if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults]
                                objectForKey:@"aValue"]]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"aValue"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    splash = [[UIView alloc] initWithFrame:CGRectMake(0,0 ,self.view.frame.size.width,self.view.frame.size.height)];
        //rgb(66, 165, 245)
    splash.backgroundColor = [UIColor colorWithRed:66/255.0 green:165/255.0 blue:245/255.0 alpha:1.0];
        
        welcomeScreen2 = [[UILabel alloc]initWithFrame:CGRectMake(145, 313, 125, 40 )];

        
        [welcomeScreen2 setText:@"Welcomed!"];
        [welcomeScreen2 setFont:[UIFont systemFontOfSize:20]];
      

         [self.view addSubview:splash];
        [splash addSubview:welcomeScreen2];

        
    splash2.hidden = NO;
    splash2.alpha = 1.0f;
    // Then fades it away after 2 seconds (the cross-fade animation will take 0.5s)
    [UIView animateWithDuration:0.5 delay:0.3 options:0 animations:^{
        // Animate the alpha value of your imageView from 1.0 to 0.0 here
        splash2.alpha = 0.0f;
    } completion:^(BOOL finished) {
        // Once the animation is completed and the alpha has gone to 0.0, hide the view for good
        splash2.hidden = YES;
    }];
        
        
        
        welcomeScreen2 = [[UILabel alloc]initWithFrame:CGRectMake(145, 313, 125, 40 )];
        
        
        [welcomeScreen2 setText:@"Welcome!"];
        [welcomeScreen2 setFont:[UIFont systemFontOfSize:20]];
        

        
        
        
        splash.hidden = NO;
        splash.alpha = 1.0f;
        // Then fades it away after 2 seconds (the cross-fade animation will take 0.5s)
        [UIView animateWithDuration:0.5 delay:2.0 options:0 animations:^{
            // Animate the alpha value of your imageView from 1.0 to 0.0 here
            splash.alpha = 0.0f;
        } completion:^(BOOL finished) {
            // Once the animation is completed and the alpha has gone to 0.0, hide the view for good
            splash.hidden = YES;
        }];
        
        //        welcomeScreen = [[UILabel alloc]initWithFrame:CGRectMake(177, 313, 125, 40 )];

        welcomeScreen = [[UILabel alloc]initWithFrame:CGRectMake(145, 313, 125, 40 )];
        
        [welcomeScreen setTextColor:[UIColor whiteColor]];
        
        [welcomeScreen setText:@"Welcome!"];
        [welcomeScreen setFont:[UIFont systemFontOfSize:20]];
        

        
 [splash addSubview:welcomeScreen];
}
}

-(void) loadedSecond{
    
    if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults]
                                objectForKey:@"aValue"]]) {
        [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"aValue"];
        [[NSUserDefaults standardUserDefaults] synchronize];

        
        
        
        
        
        

        

        
        welcomeScreen.hidden = NO;
        welcomeScreen.alpha = 1.0f;
        // Then fades it away after 2 seconds (the cross-fade animation will take 0.5s)
        [UIView animateWithDuration:-20.0 delay:-2.0 options:0 animations:^{
            // Animate the alpha value of your imageView from 1.0 to 0.0 here
            splash.alpha = 0.0f;
        } completion:^(BOOL finished) {
            // Once the animation is completed and the alpha has gone to 0.0, hide the view for good
            welcomeScreen.hidden = YES;
        }];
        
        
        

    
    
    
}
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
