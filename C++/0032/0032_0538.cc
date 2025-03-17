#include <stdio.h>
int main()
{
	enum e1 { A, B };
	struct X {
		enum e2 { A = 3, B };
		struct Y {
			int i;
			Y() : i(B) { }
		};
	};

	X::Y y;
        if( y.i == X::B ) 
            printf("ok\n");
        else
            printf("ng  y.i = %d  X::B = %d \n", y.i, X::B);
}
