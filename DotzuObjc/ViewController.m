//
//  ViewController.m
//  DotzuObjc
//
//  Created by Remi Robert on 18/02/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>
@import Dotzu_objc;
@import Dotzu;

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)launchRequest:(id)sender {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];

    [[Dotzu sharedManager] addLoggerWithSession:configuration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:@"http://httpbin.org/headers"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"log verbose");
    LogVerbose(@"verbose");
    LogWarning(@"warning");
    LogInfo(@"info");
    LogError(@"ok");
}

@end
