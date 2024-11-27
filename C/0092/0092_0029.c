#include <stdio.h>

	struct{
	        const int f1;
	        char f2;
	} str01 = { 1,2 };


	const struct{
	        int f1;
	        char f2;
	} str02 = { 3,4 };
int main( ) {

static  struct{
	        const int f1;
	        char f2;
	} str03 = { 1,20};


static const struct{
	        int f1;
	        char f2;
	} str04 = { 3,41};

        if (str01.f2==2) printf(" (1) ok\n");
        if (str02.f2==4) printf(" (2) ok\n");
        if (str03.f2==20) printf(" (3) ok\n");
        if (str04.f2==41) printf(" (4) ok\n");

}
