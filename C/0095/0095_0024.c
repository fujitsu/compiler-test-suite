#include <stdio.h>

typedef enum {E1=1,E2,E3,E4,E5,E6,E7,E8,E9} ENU;
int main()
 {
    long long int i,j,ret();

	j=ret();

	for(i=0; i<9; i++){
	   switch(i+j){
		case  E1 : printf("(1) ok\n");
			   break;
		case  E2 : printf("(2) ok\n");
			   break;
		case  E3 : printf("(3) ok\n");
			   break;
		case  E4 : printf("(4) ok\n");
			   break;
		case  E5 : printf("(5) ok\n");
			   break;
		case  E6 : printf("(6) ok\n");
			   break;
		case  E7 : printf("(7) ok\n");
			   break;
		case  E8 : printf("(8) ok\n");
			   break;
		case  E9 : printf("(9) ok\n");
			   break;
		default  : printf(" ng\n");
			   break;
	  }
	}
 }

long long int ret() { return 1; }
