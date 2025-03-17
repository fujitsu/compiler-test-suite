 


int var1;
#include <stdio.h>
int main() {
	struct ADDR1 {
		int a1;
		char a2;
		double a3;
 	};

	class ADDR2 {
 		public:
			long b1;
			unsigned int b2;
			char b3[10];
			int *b4;
	};

	int var2;
	struct ADDR1 obj0;
	ADDR1 obj1;
	ADDR2 obj2;
	struct ADDR1 *ptr1;
	ADDR2 *ptr2;

	obj2.b4=&var2;
	ptr1=&obj1;
	ptr2=&obj2;
	ptr2->b4=&var1;
	ptr1=&obj0;

        puts("ok");
}
