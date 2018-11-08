
package com.reactlibrary;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.pulsatehq.external.pulsate.factory.PulsateFactory;
import com.pulsatehq.external.pulsate.listener.IPulsateRequestListener;
import com.pulsatehq.external.pulsate.manager.IPulsateManager;
import com.pulsatehq.internal.util.AuthorizationData;

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

    /**
     * Sets the Authorization Data for the app. Authorization Data is later used in API Requests.
     */
    @ReactMethod
    public void setAuthorizationData(String APP_ID, String APP_KEY, String GCM_APP_ID) {
        pulsateManager = PulsateFactory.getInstance(new AuthorizationData(APP_ID, APP_KEY, GCM_APP_ID));
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
}