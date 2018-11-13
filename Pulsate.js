/**
 * @providesModule Pulsate
 */
// @flow

import { NativeModules, Platform } from 'react-native';
const RNPulsateSdkReact = NativeModules;

export const Pulsate = {
    setAuthData: function (appid: string, appkey: string, gcmid: string) {
        RNPulsateSdkReact.setAuthData(appid, appkey, gcmid);
    },
    startPulsateSession: function (successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias: string, successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
};