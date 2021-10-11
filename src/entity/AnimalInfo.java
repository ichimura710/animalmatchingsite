package entity;

import Dto.AnimalDto;

public class AnimalInfo {

	/** 社員情報 */
	private AnimalDto animal;

	public AnimalInfo() {}

	public AnimalInfo(AnimalDto ani) {
		this.animal = ani;
	}

	/**
	 * 社員情報を取得します
	 * @return 社員情報
	 */
	public AnimalDto getEmployee() {
		return animal;
	}

	/**
	 * 社員情報を設定します
	 * @param employee 社員情報
	 */
	public void setEmployee(AnimalDto employee) {
		this.animal = employee;
	}
}
