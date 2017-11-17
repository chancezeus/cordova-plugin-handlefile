#import "AppDelegate.h"

@interface AppDelegate (HandleFile)

- (BOOL)application:(UIApplication *)app
	openURL:(NSURL *)url
	options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;

@end
