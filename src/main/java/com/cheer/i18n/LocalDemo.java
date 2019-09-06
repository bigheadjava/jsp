package com.cheer.i18n;

import java.util.Locale;

public class LocalDemo {

	public static void main(String[] args) {
		
		/**
		 * 创建一个代表中国的Locale对象
		 * 
		 * 第一个参数是语言代码，由两个小写字母组成
		 * 第二个参数是国家代码
		 */
		Locale cn_1 = new Locale("zh","CN");
		Locale cn_2 = Locale.CHINA;
		
		Locale defaultLocale = Locale.getDefault();
	}

}
