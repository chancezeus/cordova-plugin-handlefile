#import "AppDelegate+HandleFile.h"
#import "HandleFile.h"
#import <objc/runtime.h>

@implementation AppDelegate (HandleFile)

static NSString *const PLUGIN_NAME = @"HandleFile";

- (BOOL)application:(UIApplication *)app
               openURL:(NSURL *)url
               options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;

{
	NSMutableDictionary* dictionary = @{}.mutableCopy;
    if (! [[url scheme] isEqual:@"file"]) {
		[super application:app openURL:url
		sourceApplication:@"" annotation:dictionary];
    }
    if (url == nil) {
        return NO;
    }

    // get instance of the plugin and let it handle the url object
    HandleFile *plugin = [self.viewController getCommandInstance:PLUGIN_NAME];
    if (plugin == nil) {
        return NO;
    }
    NSLog( @"HandleFile: Url is %@", [url absoluteString]);
    [plugin handleUrl:url];

    return YES;
}

@end
