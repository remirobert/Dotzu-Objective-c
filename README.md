<p align="center">
  <img src ="https://cloud.githubusercontent.com/assets/3276768/22606144/035a4a28-ea53-11e6-8359-323c214c2439.png"/>
</p>

# Dotzu-Objective-c
Dotzu Objective-c example project.

👉 [Project link](https://github.com/remirobert/Dotzu)

## Installation Cocoapods:
```Ruby
use_frameworks!
pod 'DotzuObjc'
```

After installing the pod make sur in your **Pod target** you set the **swift legacy language version** to **no**.

<img width="879" alt="screen shot 2017-02-18 at 18 44 46" src="https://cloud.githubusercontent.com/assets/3276768/23095660/afc21adc-f60d-11e6-80b6-11c0b241b6ec.png">

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
