/**
* react-native-pulsate-sdk-react.d.ts
*
* Type definition file for the react native pulsate package
*/

declare module 'react-native-pulsate-sdk-react' {
    interface PulsateManager {
        Pulsate: {
            setAuthData(appid: string, appkey: string, gcmid: string): void;
            startPulsateSession(successCallback: () => string, errorCallback: () => string): void;
            startPulsateSessionForAlias(alias: string, successCallback: () => string, errorCallback: () => string): void;
            getDeviceGuid((RCTResponseSenderBlock)successCallback);
            setAuthData:(NSString *)appid appkey:(NSString *)appkey gcmid:(NSString *)gcmid;
            startPulsateSession:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
            startPulsateSessionForAlias:(NSString*)alias onSuccess:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
            logoutCurrentAlias:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
            setNewThreadButtonEnabled:(BOOL)buttonEnabled)
            sendLocationWithBeaconEvents:(BOOL)sendLocation)
            setLocationUpdatesEnabled:(BOOL)enabled)
            setInAppNotificationEnabled:(BOOL)enabled)
            showLastInAppNotification)
            setPushNotificationEnabled:(BOOL)enabled)
            isPushNotificationEnabled:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
            setUserAuthorized:(BOOL)authorized)
            isUserAuthorized:(RCTResponseSenderBlock)successCallback)
            showLastUnauthorizedMessage)
            setUserUnauthorizedListener:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
            updateFirstName:(NSString*)firstName)
            updateLastName:(NSString*)lastName)
            updateEmail:(NSString*)email)
            updateGender:(NSInteger)gender)
            updateAge:(NSString*)age)
            setPrivacy:(NSInteger)privacy)
            createAttribute:(NSString*)propertyName withString:(NSString *)value)
            createAttribute:(NSString*)propertyName withFloat:(CGFloat)number)
            createAttribute:(NSString*)propertyName withInteger:(NSInteger)number)
            createAttribute:(NSString*)propertyName withBoolean:(BOOL)boolean)
            createAttribute:(NSString*)propertyName withDate:(NSDate*)date)
            incrementIntegerAttribute:(NSString*)attributeName withInteger:(NSInteger)value)
            decrementIntegerAttribute:(NSString*)attributeName withInteger:(NSInteger)value)
            incrementFloatAttribute:(NSString*)attributeName withFloat:(CGFloat)value)
            decrementFloatAttribute:(NSString*)attributeName withFloat:(CGFloat)value)
            createEvent:(NSString*)eventName)
            forceAttributeSync)
            startLocation)
            startRemoteNotifications)
            startRemoteNotifications)
            showFeed());
            getBadgeCount:(RCTResponseSenderBlock)successCallback);
        }        
    }

    var PulsateManager: PulsateManager;
    export = PulsateManager;
}