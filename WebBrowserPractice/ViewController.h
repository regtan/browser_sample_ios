//
//  ViewController.h
//  WebBrowserPractice
//
//  Created by reg on 2012/09/01.
//  Copyright (c) 2012年 regtan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webPage;
- (IBAction)homeButton:(id)sender;


@end
