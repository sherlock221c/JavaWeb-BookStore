package com.sherlock.utils;

import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class WebUtils {
    public static <T> T copyParamToBean(Map value, T bean){
        try {
            BeanUtils.populate(bean, value);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 将String转化成整数值
     * @param val 要转化的值
     * @param defaultValue 转化失败默认值
     * @return
     */
    public static int parseInt(String val, int defaultValue) {
        try {
            if (val != null)
                return Integer.parseInt(val);
        }catch (Exception e){
            e.printStackTrace();
        }
        return defaultValue;
    }
}
