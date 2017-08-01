#import <Cordova/CDVPlugin.h>

@interface ChangeIcon : CDVPlugin {
}

// The hooks for our plugin commands
- (void)change:(CDVInvokedUrlCommand *)command;
- (void)getCurrent:(CDVInvokedUrlCommand *)command;
- (void)reset:(CDVInvokedUrlCommand *)command;

@end
