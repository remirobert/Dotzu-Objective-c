<p align="center">
  <img src ="https://cloud.githubusercontent.com/assets/3276768/22606144/035a4a28-ea53-11e6-8359-323c214c2439.png"/>
</p>

# Dotzu-Objective-c
Dotzu Objective-c example project.

## Installation Cocoapods:
```Ruby
use_frameworks!
pod 'DotzuObjc'
```

## Usage

In the `AppDelegate` instanciate `Dotzu manager`.
Be careful to use Dotzu for development purpose only.

```Objective-c
@import Dotzu;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[Dotzu sharedManager] displayWindow];
    return YES;
}

@end
```

## Logs
```Objective-c
@import Dotzu_objc;

NSLog(@"log verbose");
LogVerbose(@"verbose");
LogWarning(@"warning");
LogInfo(@"info");
LogError(@"ok");
```

## Network for AFNetworking:

```Objective-c
 NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];

 [[Dotzu sharedManager] addLoggerWithSession:configuration];
 AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
```
