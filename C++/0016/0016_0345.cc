 

class ADDR2 {
	public:
		long b1;
		unsigned int b2;
		static class ADDR3 {
			public:
				int c1;
				int c2;
		}yy;
};

ADDR2::ADDR3 ADDR2::yy;

#include <stdio.h>
int main() {
	ADDR2 obj1, obj2, obj3;

	obj1.b1=100;
	obj1.yy.c1=200;
	obj2.yy.c2=300;

        puts("ok");
}
