package travel.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class TravelBean {
	
	private int num;
	
	@NotEmpty(message = "이름은 필수 입력사항입니다.")
	private String name;
	
	//@Min(value = 10, message="나이는 최소 10살 이상입니다.")
	//@Max(value = 100, message="나이는 최대 100살입니다.")
	@Range(min = 10, max = 100,message = "나이는 10~100으로 작성해야 합니다.")
	private int age;
	
	@NotNull(message="관심 지역은 1개 이상 선택해야 합니다.") // @NotEmpty가능 
	private String area; // 유럽,동남아,일본
	
	@NotNull(message="원하는 여행 타입을 선택하세요") // @NotEmpty가능 
	private String style;
	
	@NotEmpty(message="원하는 가격대를 선택하세요") // @NotNull,@NotBlank가능 
	private String price;
	
	
	public TravelBean() {
		super();
	}


	public TravelBean(int num, String name, int age, String area, String style, String price) {
		super();
		this.num = num;
		this.name = name;
		this.age = age;
		this.area = area;
		this.style = style;
		this.price = price;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getStyle() {
		return style;
	}


	public void setStyle(String style) {
		this.style = style;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
