package collection;

import java.util.*;

public class Ex05 {

	public static void main(String[] args) {
		
		// HashMap을 사용해서 아이디 비밀번호 3~4개 입력
		// <String, String>
		// keySet메소드로 key객체를 Set타입으로 얻은 다음
		// Iterator 를 사용해서 전체 key 객체를 얻고 
		// get 메소드를 통해 key 객체로 value 객체를 얻는다.
		// 아이디와 비밀번호 출력하기 
		
		Map<String, String> map = new HashMap<>();
		
		map.put("hong", "1234");
		map.put("sung", "5678");
		map.put("mong", "qwer");
		
		Set<String> keySet = map.keySet();
		Iterator<String> keyIter = keySet.iterator();
		
		while(keyIter.hasNext()) {
			
			String id = keyIter.next();
			String pw = map.get(id);
			
			System.out.println("아이디 : " + id + ", 비밀번호 : " + pw);
			
		}
		
		
		
	}

}
