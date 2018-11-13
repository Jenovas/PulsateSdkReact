/**
 * @providesModule Pulsate
 */
// @flow

import { NativeModules, Platform } from 'react-native';
const RNPulsateSdkReact = NativeModules.RNPulsateSdkReact;

export const Pulsate = {
    setAuthData: function (appid, appkey, gcmid) {
        RNPulsateSdkReact.setAuthData(appid, appkey, gcmid);
    },
    startPulsateSession: function (successCallback, errorCallback) {
        RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias, successCallback, errorCallback) {
        RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
};