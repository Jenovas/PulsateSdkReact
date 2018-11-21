#import "RNPulsateSdkReact.h"
#import <PULPulsate/PULPulsate.h>

@implementation RNPulsateSdkReact

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(getDeviceGuid:(RCTResponseSenderBlock)successCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
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
            successCallback("SUCCESS");
        } else {
            errorCallback("ERROR");
        }
    }]
}

RCT_EXPORT_METHOD(startPulsateSessionForAlias:(NSString*)alias onSuccess:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startPulsateSessionForAlias:a withListener:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            successCallback("SUCCESS");
        } else {
            errorCallback("ERROR");
        }
    }];
}

RCT_EXPORT_METHOD(logoutCurrentAlias:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setNewThreadButtonEnabled:(BOOL)buttonEnabled)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(sendLocationWithBeaconEvents:(BOOL)sendLocation)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setLocationUpdatesEnabled:(BOOL)enabled)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setInAppNotificationEnabled:(BOOL)enabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(showLastInAppNotification)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setPushNotificationEnabled:(BOOL)enabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(isPushNotificationEnabled:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setUserAuthorized:(BOOL)authorized)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(isUserAuthorized:(RCTResponseSenderBlock)successCallback)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(showLastUnauthorizedMessage)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setUserUnauthorizedListener:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(updateFirstName:(NSString*)firstName)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(updateLastName:(NSString*)lastName)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(updateEmail:(NSString*)email)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(updateGender:(NSInteger)gender)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(updateAge:(NSString*)age)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setPrivacy:(NSInteger)privacy)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createAttribute:(NSString*)propertyName withString:(NSString *)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createAttribute:(NSString*)propertyName withFloat:(CGFloat)number)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createAttribute:(NSString*)propertyName withInteger:(NSInteger)number)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createAttribute:(NSString*)propertyName withBoolean:(BOOL)boolean)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createAttribute:(NSString*)propertyName withDate:(NSDate*)date)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(incrementIntegerAttribute:(NSString*)attributeName withInteger:(NSInteger)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(decrementIntegerAttribute:(NSString*)attributeName withInteger:(NSInteger)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(incrementFloatAttribute:(NSString*)attributeName withFloat:(CGFloat)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(decrementFloatAttribute:(NSString*)attributeName withFloat:(CGFloat)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(createEvent:(NSString*)eventName)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(forceAttributeSync)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(startLocation)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(startRemoteNotifications)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(startRemoteNotifications)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(showFeed)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
        UINavigationController* controller = [man getFeedNavigationController];
        AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [delegate.window.rootViewController presentViewController:controller animated:NO completion:nil];
    });
}

RCT_EXPORT_METHOD(getBadgeCount:(RCTResponseSenderBlock)successCallback)
{
    PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
}
@end
