/**
 * @providesModule Pulsate
 */
// @flow

import { NativeModules, Platform } from 'react-native';
const RNPulsateSdkReact = NativeModules.RNPulsateSdkReact;

export const Pulsate = {
    setAuthorizationData: function (APP_ID, APP_KEY, GCM_APP_ID) {
        RNPulsateSdkReact.setAuthorizationData(APP_ID, APP_KEY, GCM_APP_ID);
    },
    startPulsateSession: function (successCallback, errorCallback) {
        RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias, successCallback, errorCallback) {
        RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
}