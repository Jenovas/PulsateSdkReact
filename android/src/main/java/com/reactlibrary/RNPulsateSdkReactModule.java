package com.reactlibrary;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.pulsatehq.external.pulsate.factory.PulsateFactory;
import com.pulsatehq.external.pulsate.listener.IPulsateRequestListener;
import com.pulsatehq.external.pulsate.listener.IPulsateUserUnauthorizedListener;
import com.pulsatehq.external.pulsate.manager.IPulsateManager;
import com.pulsatehq.internal.util.AuthorizationData;

import java.util.Date;
import java.util.List;

public class RNPulsateSdkReactModule extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private IPulsateManager pulsateManager;

    public RNPulsateSdkReactModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNPulsateSdkReact";
    }
    
    @ReactMethod
    public void setAuthData(String appid, String appkey, String gcmid) {
        pulsateManager = PulsateFactory.getInstance(new AuthorizationData(appid, appkey, gcmid));
    }

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

    @ReactMethod
    public void logoutCurrentAlias(Callback successCallback, Callback errorCallback) {
        pulsateManager.logoutCurrentAlias(new IPulsateRequestListener() {
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

    @ReactMethod
    public void setNewThreadButtonEnabled(boolean buttonEnabled) {
        pulsateManager.setNewThreadButtonEnabled(buttonEnabled);
    }

    @ReactMethod
    public void sendLocationWithBeaconEvents(boolean sendLocation) {
        pulsateManager.sendLocationWithBeaconEvents(sendLocation);
    }
    
    @ReactMethod
    public void setLocationUpdatesEnabled(boolean enabled) {
        pulsateManager.setLocationUpdatesEnabled(enabled);
    }
    
    @ReactMethod
    void setInAppNotificationEnabled(boolean enabled) {
        pulsateManager.setInAppNotificationEnabled(enabled);
    }

    @ReactMethod
    void showLastInAppNotification() {
        pulsateManager.showLastInAppNotification();
    }

    @ReactMethod
    void setPushNotificationEnabled(boolean enabled) {
        pulsateManager.setPushNotificationEnabled(enabled);
    }

    @ReactMethod
    void isPushNotificationEnabled(Callback successCallback, Callback errorCallback) {
        if (pulsateManager.isPushNotificationEnabled()) {
            successCallback.invoke("ENABLED");
        } else {
            errorCallback.invoke("DISABLED");
        }
    }

    @ReactMethod
    public void setUserAuthorized(boolean authorized) {
        pulsateManager.setUserAuthorized(authorized);
    }

    @ReactMethod
    public void showLastUnauthorizedMessage() {
        pulsateManager.showLastUnauthorizedMessage();
    }

    @ReactMethod
    public void updateFirstName(String firstName) {
        pulsateManager.updateFirstName(firstName);
    }

    @ReactMethod
    public void updateLastName(String lastName) {
        pulsateManager.updateLastName(lastName);
    }

    @ReactMethod
    public void updateEmail(String email) {
        pulsateManager.updateEmail(email);
    }

    @ReactMethod
    public void updateGender(int gender) {
        pulsateManager.updateGender(gender);
    }

    @ReactMethod
    public void updateAge(String age) {
        pulsateManager.updateAge(age);
    }

    @ReactMethod
    public void setPrivacy(int privacy) {
        pulsateManager.setPrivacy(privacy);
    }

    @ReactMethod
    public void createAttributeWithString(String attributeName, String value) {
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithFloat(String attributeName, float value) {
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithInt(String attributeName, int value) {
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithBool(String attributeName, boolean value) {
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithDate(String attributeName, Date value) {
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createEvent(String event) {
        pulsateManager.createEvent(event);
    }

    @ReactMethod
    public void incrementCounter(String counterName, int value) {
        pulsateManager.incrementCounter(counterName, value);
    }

    @ReactMethod
    public void decrementCounter(String counterName, int value) {
        pulsateManager.decrementCounter(counterName, value);
    }

    @ReactMethod
    public void forceAttributeSync() {
        pulsateManager.forceAttributeSync();
    }

    @ReactMethod
    public void showFeed() {
        pulsateManager.showFeed();
    }

    @ReactMethod
    public void setUserUnauthorizedListenerAndroid(Callback successCallback) {
        pulsateManager.setUserUnauthorizedListener(new IPulsateUserUnauthorizedListener() {
            @Override
            public void onUnauthorizedAction() {
                successCallback.invoke("UNAUTHORIZED ACTION");
            }
        });
    }
    
    @ReactMethod
    public void setUnreadCountUpdateListenerAndroid(Callback successCallback) {
        pulsateManager.setUnreadCountUpdateListener(new IPulsateUnreadCountUpdateListener() {
            @Override
            public void onUnreadCountUpdate(int unread) {
                successCallback.invoke(""+unread);
            }
        });
    }

    @ReactMethod
    public void isUserAuthorizedIOS(Callback successCallback, Callback errorCallback) {
    }

    @ReactMethod
    public void getDeviceGuidIOS(Callback successCallback) {
    }

    @ReactMethod
    public void startLocationIOS() {
    }

    @ReactMethod
    public void startRemoteNotificationsIOS() {
    }

    @ReactMethod
    public void getBadgeCountIOS() {
    }
}