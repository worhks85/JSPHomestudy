package collection;

import java.util.*;

public class Ex04 {

	public static void main(String[] args) {
		
		Map<String, Integer> map = new HashMap<>();
		
		// 데이터 넣기
		map.put(new String("홍길동"), new Integer(90));
		map.put("성춘향", 80);
		map.put("이순신", 95);
		map.put("이몽룡", 77);
		map.put("장보고", 85);
		map.put("홍길동", 99);
		
		int size = map.size();
		System.out.println("Map Entry : " + size);
		
		System.out.println(map.get("홍길동")); // key를 가지고 value얻기
		System.out.println(map.get("홍길순"));
		
		// 객체를 하나씩 처리 
		Set<String> keySet = map.keySet(); // key 객체를 Set타입으로 반환
		
		Iterator<String> keyIter = keySet.iterator();
		
		while(keyIter.hasNext()) {
			
			String key = keyIter.next();
			
			int value = map.get(key);
			
			System.out.println("key : " + key + ", value : " + value);
			
		}
		System.out.println();
		
		map.remove("홍길동"); // key객체로 Entry 삭제
		map.remove("성춘향");
		
		System.out.println(map);
		
		map.clear(); // 전체삭제
		
		if(map.isEmpty()) {
			System.out.println("요소가 비어있습니다.");
		}
		
		
		
	}

}
