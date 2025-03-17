struct A_131p15b {
	struct B_131p15b {
		int i;
		B_131p15b(int j) : i(j) {}
		int f() { return i; }
		int g() { return f(1); }
	private:
		int f(int j) { return i + j; }
	};
	B_131p15b b;
	A_131p15b(int j) : b(j) { }
};

#include <stdio.h>
int main() { 
  puts("ok");
}



