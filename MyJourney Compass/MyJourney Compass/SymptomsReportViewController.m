//
//  SymptomsReportViewController.m
//  MyJourney Compass
//
//  Created by Choi, Myung on 2/1/14.
//  Copyright (c) 2014 Choi, Myung. All rights reserved.
//

#import "SymptomsReportViewController.h"

@interface SymptomsReportViewController () <UIWebViewDelegate>

@end

@implementation SymptomsReportViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.ReportWebView.delegate = self;
    
    NSString *fullURL = @"https://journeycompass.i3l.gatech.edu/symptomsummary.aspx";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_ReportWebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@" Started to Load ");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@" Finished to Load ");
}

@end
