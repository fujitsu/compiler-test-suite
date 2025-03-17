


#include <stdio.h>
	struct  A{
		int a;
	} *A;	

	typedef struct zzz {
		struct A* A;	
	} ZZZ;



	typedef struct yyy {
		struct  B{
			int b;
		} *B;	
	} YYY;


	struct xxx {
		struct  C{
			int c;
		} *C;	
	};
int main()
	{
                printf("ok\n");
		return 1;
	}

