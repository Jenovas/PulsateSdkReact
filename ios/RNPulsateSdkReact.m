#import "RNPulsateSdkReact.h"
#import <PULPulsate/PULPulsate.h>

@implementation RNPulsateSdkReact

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(setAuthData:(NSString *)appid appkey:(NSString *)appkey gcmid:(NSString *)gcmid)
{
    PULAuthorizationData* authData = [[PULAuthorizationData alloc] initWithAppId:appid andAppKey:appkey validationError:nil];
    PULPulsateManager* manager = [PULPulsateFactory getInstanceWithAuthorizationData:authData withLocationEnabled:YES withPushEnabled:YES withLaunchOptions:nil withPulsateAppDelegate:YES andPulsateNotificationDelegate:YES error:nil];
}

RCT_EXPORT_METHOD(startPulsateSession:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startPulsateSession:^(BOOL success, NSError * _Nullable error) {
        if (success) {
        } else {
        }
    }]
}
@end
