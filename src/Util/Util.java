package Util;

public class Util {
	public Util() {}

	public static boolean isStringEmpty(String val) {
		try {
			if (val == null) {
				return true;
			}

			if (val.trim().length() <= 0) {
				return true;
			}
		} catch(Exception e) {
			return true;
		}
		return false;
	}

}
