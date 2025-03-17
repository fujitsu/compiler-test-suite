

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

        puts("ok");
}
