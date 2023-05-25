package main;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		for(int i=1;;i++) {
			
		}
	}
	
	public static int sum(int n) {
		int x = 0;
		if(n<=1) {
			return n;
		}
		else {
			return sum(n-1)*n;
		}
	}
}