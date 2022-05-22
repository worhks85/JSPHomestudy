package collection;

import java.util.*;

// Member 클래스를 만든다.
// 필드는 String name; String id; String pw; 이다.
// 생성자의 매개값으로 필드초기화 하자.
// 필드를 외부접근 금지가 되게한다.
// 필드에 대한 getter / setter 메소드를 만들어서 필드를 사용할 수 있게한다.

class Member {
	
	private String name;
	private String id;
	private String pw;
	
	public Member(String name, String id, String pw) {
		this.name = name;
		this.id = id;
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
	
}

public class Ex03 {

	public static void main(String[] args) {
		
		// Member 타입의 ArrayList 생성 후 
		// 3명의 회원을 ArrayList 안에 넣기
		
		// 3명의 회원을 출력하기 
		
		ArrayList<Member> list = new ArrayList<>();
		
		list.add(new Member("홍길동", "hong", "1234"));
		list.add(new Member("성춘향", "sung", "5678"));
		list.add(new Member("이몽룡", "lee", "4321"));
		
		for(int i = 0; i < list.size(); i++) {
			
			Member member = list.get(i);
			
			System.out.println(i+1 + "번째 회원의 이름 : " + member.getName());
			System.out.println(i+1 + "번째 회원의 아이디 : " + member.getId());
			System.out.println(i+1 + "번째 회원의 비밀번호 : " + member.getPw());
			System.out.println();
		}
		
		// 홍길동 회원의 아이디와 비밀번호를 수정하기 (hong1, qwer)
		
		for(int i = 0; i < list.size(); i++) {
			Member member = list.get(i);
			
			if(member.getName().equals("홍길동")) {
				member.setId("hong1");
				member.setPw("qwer");
			}
			
		}
		
		for(int i = 0; i < list.size(); i++) {
			
			Member member = list.get(i);
			
			System.out.println(i+1 + "번째 회원의 이름 : " + member.getName());
			System.out.println(i+1 + "번째 회원의 아이디 : " + member.getId());
			System.out.println(i+1 + "번째 회원의 비밀번호 : " + member.getPw());
			System.out.println();
		}
		
	}

}









