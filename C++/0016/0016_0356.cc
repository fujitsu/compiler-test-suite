
#include <stdio.h>

typedef struct SCOPE {
	int s1;
	long s2;
}aaa;

int cls;
SCOPE obj;
int main(){
	int cls;
	SCOPE obj;

	cls=100;
	::cls=200;
	obj.s1=1;
	::obj.s1=2;

	if (cls==100){
		int cls;
		SCOPE obj;

		cls=300;
		::cls=400;
		obj.s1=3;
		::obj.s1=4;
		obj.s2=1;
	}

        puts("ok");
}
