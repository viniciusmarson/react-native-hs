#import "RNHelpshift.h"

#import "HelpshiftSupport.h"

#import "RCTConvert.h"

@implementation RNHelpshift

-(id) init {
    self = [super init];
    [[HelpshiftSupport sharedInstance] setDelegate:self];
    return self;
}


RCT_EXPORT_MODULE();

# pragma mark - Exposed methods

RCT_EXPORT_METHOD(showFAQs:(NSDictionary*)optionsDictionary)
{
  UIViewController *rootController = UIApplication.sharedApplication.delegate.window.rootViewController;
  [HelpshiftSupport showFAQs:rootController withOptions:optionsDictionary];
}

RCT_EXPORT_METHOD(showConversation:(NSDictionary*)optionsDictionary)
{
  UIViewController *rootController = UIApplication.sharedApplication.delegate.window.rootViewController;
  [HelpshiftSupport showConversation:rootController withOptions:optionsDictionary];
}

RCT_EXPORT_METHOD(requestUnreadMessagesCount:(BOOL)remote)
{
  [HelpshiftSupport requestUnreadMessagesCount:remote];
}

# pragma mark - RCTBridgeModule methods

- (NSArray<NSString *> *)supportedEvents {
    return @[
             @"didReceiveNotificationCount",
             @"didReceiveUnreadMessagesCount",
             ];
}

# pragma mark - HelpshiftSupportDelegate methods

- (void)didReceiveNotificationCount:(NSInteger)count {
    [self sendEventWithName:@"didReceiveNotificationCount" body:@{@"count": @(count)}];
}

- (void)didReceiveUnreadMessagesCount:(NSInteger)count {
    [self sendEventWithName:@"didReceiveUnreadMessagesCount" body:@{@"count": @(count)}];
}

@end
