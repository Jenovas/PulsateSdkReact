
#import "RNPulsateSdkReact.h"
#import <PULPulsate/PULPulsate.h>

@implementation RNPulsateSdkReact

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

@ReactMethod
    public void setAuthorizationData(String appid, String appkey, String gcmid) {
        pulsateManager = PulsateFactory.getInstance(new AuthorizationData(appid, appkey, gcmid));
    }

    /**
     * Starts Pulsate session lifecycle.
     * Session starts when the app enters foreground and ends when it goes to background.
     */
    @ReactMethod
    public void startPulsateSession(Callback successCallback, Callback errorCallback) {
        pulsateManager.startPulsateSession(new IPulsateRequestListener() {
            @Override
            public void onSucess() {
                successCallback.invoke("Successfully started session");
            }

            @Override
            public void onError(Throwable e) {
                errorCallback.invoke(e.getMessage());
            }
        });
    }

    /**
     * Starts Pulsate session lifecycle, for the given user.
     * Session starts when the app enters foreground and ends when it goes to background.
     *
     * @param alias
     */
    @ReactMethod
    public void startPulsateSessionForAlias(String alias, Callback successCallback, Callback errorCallback) {
        pulsateManager.startPulsateSessionForAlias(alias, new IPulsateRequestListener() {
            @Override
            public void onSucess() {
                successCallback.invoke("Successfully started session");
            }

            @Override
            public void onError(Throwable e) {
                errorCallback.invoke(e.getMessage());
            }
        });
    }

    setAuthorizationData(String appid, String appkey, String gcmid)
RCT_EXPORT_METHOD(setAuthorizationData:(NSString *)appid appKey: appKey)
{
  CLS_LOG(@"%@", message);
}

RCT_EXPORT_METHOD(recordError:(NSDictionary *)error)
{
    NSInteger code;
    NSString *domain;
    NSObject *codeObject = [error objectForKey:@"code"];
    if (codeObject && [codeObject isKindOfClass:NSNumber.class])
        code = [(NSNumber *)codeObject intValue];
    else
        code = DefaultCode;
    if ([error objectForKey:@"domain"])
        domain = [error valueForKey:@"domain"];
    else
        domain = DefaultDomain;

    NSError *error2 = [NSError errorWithDomain:domain code:code userInfo:error];
    [[Crashlytics sharedInstance] recordError:error2];
}
@end
  