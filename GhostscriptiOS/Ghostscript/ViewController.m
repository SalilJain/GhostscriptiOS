//
//  ViewController.m
//  Ghostscript
//
//  Created by Salil Jain on 3/15/14.
//  Copyright (c) 2014 saachitech. All rights reserved.
//

#import "ViewController.h"
#import "GSAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *pdfPath = [[NSBundle mainBundle] pathForResource:@"simulator" ofType:@"pdf"];
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    NSString *psPath = [documentsPath stringByAppendingPathComponent:@"simulator.ps"];
    [GSAPI convertPDF:pdfPath toPS:psPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
