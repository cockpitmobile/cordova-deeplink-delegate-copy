#import "AppDelegate+DeepLinkDelegatePlugin.h"
#import "AppsFlyerPlugin.h"

@implementation AppDelegate (DeepLinkDelegatePlugin)

// Deep linking
// Open URI-scheme for iOS 9 and above
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *) options {
[[AppsFlyerAttribution shared] handleOpenUrl:url options:options];
 return YES;}
// Open URI-scheme for iOS 8 and below
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation {
 [[AppsFlyerAttribution shared] handleOpenUrl:url sourceApplication:sourceApplication annotation:annotation];
    return YES;}
// Open Universal Links
- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
 [[AppsFlyerAttribution shared] continueUserActivity:userActivity restorationHandler:restorationHandler];
    return YES;}

@end
