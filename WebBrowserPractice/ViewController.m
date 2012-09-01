//
//  ViewController.m
//  WebBrowserPractice
//
//  Created by reg on 2012/09/01.
//  Copyright (c) 2012年 regtan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webPage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self homeButton:self];
}

- (void)viewDidUnload
{
    [self setWebPage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)homeButton:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    [webPage loadRequest:[NSURLRequest requestWithURL:url]];    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

@end
