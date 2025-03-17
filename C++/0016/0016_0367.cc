#include <stdio.h>

class ADDR3 {
	public:
		int c1;
		int c2;
};
class ADDR2 {
	public:
 		class ADDR4 {
			public:
				int d1;
		} zz;
		ADDR3 xx;
		static ADDR3 yy;
};

ADDR3 ADDR2::yy;

int main() {
	ADDR2 obj1, obj2, obj3;


	obj1.yy.c1=200;
	obj2.yy.c2=300;
	printf("ADDR2::yy.c1 = %d\n", obj1.yy.c1);
	printf("ADDR2::yy.c2 = %d\n", obj2.yy.c2);
}
