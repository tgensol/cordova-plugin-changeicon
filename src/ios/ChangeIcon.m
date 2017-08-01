#import "ChangeIcon.h"

#import <Cordova/CDVAvailability.h>
#import <Cordova/CDV.h>

@implementation ChangeIcon

- (void)pluginInitialize {
   NSLog(@"Starting Change-Icon plugin");
}

- (void)change:(CDVInvokedUrlCommand *)command {
  NSLog(@"changeIcon...");
  NSString* icon = [command.arguments objectAtIndex:0];
  [[UIApplication sharedApplication] setAlternateIconName:icon completionHandler:^(NSError * _Nullable error) {
    CDVPluginResult *pluginResult;
    if(error) {
          pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                     messageAsString:[NSString stringWithFormat:@"Error: %@", error.description]];
    }
    else{
            UIApplication *application = [UIApplication sharedApplication];
           CDVPluginResult* result = [CDVPluginResult
                           resultWithStatus:CDVCommandStatus_OK
                           messageAsString:application.alternateIconName];
    } 
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }];
}

- (void)getCurrent:(CDVInvokedUrlCommand *)command {
  NSLog(@"getCurrentIcon...");
  UIApplication *application = [UIApplication sharedApplication];
  CDVPluginResult* result = [CDVPluginResult
                           resultWithStatus:CDVCommandStatus_OK
                           messageAsString:application.alternateIconName];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)reset:(CDVInvokedUrlCommand *)command {
if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
        return;

[[UIApplication sharedApplication] setAlternateIconName:nil
                                      completionHandler:^(NSError * _Nullable error) {
                                          NSLog(@"%@", [error description]);
                                      }];

}

@end
