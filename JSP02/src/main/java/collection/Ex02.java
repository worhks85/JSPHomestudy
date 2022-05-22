package collection;

import java.util.*;

public class Ex02 {

	public static void main(String[] args) {
		
		// String 타입의 ArrayList를 생성한 후
		// 연예인 5명의 이름을 넣어보자
		// 이름을 향상된 for문 일반for문 Iterator로 출력해보자 
		
		List<String> list = new ArrayList<>();
		
		list.add("유재석");
		list.add("강호동");
		list.add("오영수");
		list.add("이정재");
		list.add("정호연");
		
		for(String name : list) {
			System.out.println(name);
		}
		System.out.println();
		
		for(int i = 0; i < list.size(); i++) {
			String name = list.get(i);
			System.out.println(name);
		}
		System.out.println();
		
		Iterator<String> iter = list.iterator();
		
		while(iter.hasNext()) {
			
			String name = iter.next();
			System.out.println(name);
			iter.remove();
			
		}
		System.out.println(list.isEmpty());
		
		
		
	}

}
