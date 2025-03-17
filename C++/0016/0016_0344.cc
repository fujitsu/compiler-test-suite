struct ADDR1 {
	static int a1;
	char a2;
	double a3;
	static int *a4;
};

int ADDR1::a1=10;
int * ADDR1::a4;

class ADDR2 {
	public:
		long b1;
		unsigned int b2;
		static char b3[10];
};

char ADDR2::b3[10];

int var1;
ADDR1 add1;
ADDR2 add2;
#include <stdio.h>
int main() {
	int var2;
	struct ADDR1 obj0;
	ADDR1 obj1;
	ADDR2 obj2;
	struct ADDR1 *ptr1;
	ADDR2 *ptr2;

	ptr1=&obj1;
	ptr2=&obj2;
	ptr1=&obj0;

	ptr1->a4=&var1;

	ptr1=&add1;
	ptr2=&add2;

	ptr1->a4=&var2;

        puts("ok");
}
