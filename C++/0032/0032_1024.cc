

#include <stdio.h>

unsigned count711p51a = 0;

class X711p51a {
public:
	int i, j;
	X711p51a(int ii = 11, int jj = 51) : i(ii), j(jj) { ++count711p51a; }
};

X711p51a a711p51a;
X711p51a b711p51a = 71;
extern X711p51a c711p51a (7, 11);


unsigned count711p51b = 0;

class X711p51b {
public:
	int i, j;
	X711p51b(int ii = 11, int jj = 51) : i(ii), j(jj) { ++count711p51b; }
};

X711p51b a711p51b = 71;
int main()
{
    int count = 0;

    
    {
	if( count711p51a == 3 )
            count++;
        else 
            printf("ng count711p51a : %d\n", count711p51a);


	extern X711p51a a711p51a;
	if( count711p51a == 3 )
            count++;
        else 
            printf("ng count711p51a : %d\n", count711p51a);

	X711p51a a = 51;
	if( count711p51a == 4 )
            count++;
        else 
            printf("ng count711p51a : %d\n", count711p51a);
    }

    
    {
	if( count711p51b == 1 )
            count++;
        else 
            printf("ng count711p51b : %d\n", count711p51b);

	static X711p51b x = 7;
	extern X711p51b a711p51b;
	static X711p51b y (a711p51b.i, a711p51b.j);
	if( count711p51b == 3 )
            count++;
        else 
            printf("ng count711p51b : %d\n", count711p51b);
    }

    if( count == 5 ) printf("ok\n");
}
