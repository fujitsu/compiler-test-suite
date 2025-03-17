
#include <stdio.h>

class REFERENCE {
	public:
		int re1;
		long re2;
	   	double re3;
		char re4;
		int *re5;
};
int main() {
	REFERENCE ptr;
	REFERENCE *obj;

	obj=&ptr;

	double &ref1=obj->re3;
	int cls;

	obj->re5=&cls;
	int &ref2=*obj->re5;

        puts("ok");
}
