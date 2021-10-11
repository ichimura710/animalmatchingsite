package Dto;

public class AnimalDto {
	//animal_id
	private int animal_id;
	//画像
	private String image;
	//種類
	private String kind;
	//生年月日
	private String birthday;
	//性別
	private String sex;
	//連絡方法
	private String contact;
	//特徴
	private String animalChar;
	//地域
	private String userArea;

	//animal_idのget,set
	public int getAnimal_id() {
		return animal_id;
	}

	public void setAnimal_id(int animal_id) {
		this.animal_id = animal_id;
	}

	//画像のget,set
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	//種類のget,set
	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	//生年月日のget,set
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	//性別のget,set
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	//連絡方法のget,set
	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	//特徴のget,set
	public String getAnimalChar() {
		return animalChar;
	}

	public void setAnimalChar(String animalChar) {
		this.animalChar = animalChar;
	}

	//地域のget,set
	public String getUserArea() {
		return userArea;
	}

	public void setUserArea(String userArea) {
		this.userArea = userArea;
	}
}
