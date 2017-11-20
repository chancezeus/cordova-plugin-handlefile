#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>

@interface HandleFile : CDVPlugin

@property (nonatomic, strong) NSURL* launchedURL;
@property (strong) NSString* callbackId;


- (BOOL)handleUrl:(NSURL *)url;
- (void)jsSubscribeForEvent:(CDVInvokedUrlCommand *)command;

@end
