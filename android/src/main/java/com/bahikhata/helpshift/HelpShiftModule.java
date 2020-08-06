package com.bahikhata.helpshift;

import android.app.Application;
import android.util.Log;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import com.helpshift.Core;
import com.helpshift.support.Support;
import com.helpshift.InstallConfig;
import com.helpshift.exceptions.InstallException;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Nullable;

/**
 * Created by user on 26/10/17.
 */

public class HelpShiftModule extends ReactContextBaseJavaModule {

    public HelpShiftModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "Helpshift";
    }

    @Nullable
    @Override
    public Map<String, Object> getConstants() {
        return super.getConstants();
    }

    @ReactMethod
    public void showFAQ(){
        Support.showFAQs(getCurrentActivity());
    }

    @ReactMethod
    public void showConversation(){
        Support.showConversation(getCurrentActivity());
    }

    @ReactMethod
    public void initialize(String api_key,String domain_name,String app_id){

        Core.init(Support.getInstance());
        /*InstallConfig installConfig = new InstallConfig.Builder()
                                    .setEnableInAppNotification(true)
                                    .setNotificationSound(R.raw.solemn)
                                    .build();*/
        try{
            Core.install(getCurrentActivity().getApplication(),api_key,domain_name,app_id);
        }catch (InstallException e){
            Log.e("Helpshift Error","invalid install credentials :",e);
        }
        Log.e("Helpshift Error","invalid install credentials");

    }

    @ReactMethod
    public void setUser(String userId,String name,String email){
        Core.login(userId,name,email);

    }
}
