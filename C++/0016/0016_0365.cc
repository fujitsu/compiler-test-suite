

#include <stdio.h>

class SCOPE {
	public:
		int s1;
		long s2;
};

int cls;
SCOPE obj;
int main(){
	int cls;
	SCOPE obj;

	cls=100;
	::cls=200;

	if (cls==100){
		int cls;
		SCOPE obj;

		cls=300;
		::cls=400;

		int xx;
		xx=500;
		xx++;
	}

	if (::cls==400){
		int cls;
		SCOPE obj;
		int lex1=11111;

		cls=600;
		::cls=700;

		int xx;
		xx=800;
		int lex2=22222;
		lex2++;
	}

        puts("ok");
}
