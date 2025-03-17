

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
		
		if (::cls==400){
			long lex1;
			lex1=11;

			double lex2, cls;
			lex2=22;
			cls=33;
			cls++;
		}
		int xx;
		xx=500;
		xx++;
	}

        puts("ok");
}
