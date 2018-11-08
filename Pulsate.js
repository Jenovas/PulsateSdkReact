
import { NativeModules, Platform } from 'react-native';

const { RNPulsateSdkReact } = NativeModules;

export default RNPulsateSdkReact;

export const Pulsate = {
    setAuthorizationData: function (APP_ID, APP_KEY, GCM_APP_ID) {
        return RNPulsateSdkReact.setAuthorizationData(APP_ID, APP_KEY, GCM_APP_ID);
    },
    startPulsateSession: function (successCallback, errorCallback) {
        return RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias, successCallback, errorCallback) {
        return RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
}