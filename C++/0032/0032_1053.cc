#include <stdio.h>



int count = 0;
int dtor_124p32 = 0;

struct A_124p32 {
	~A_124p32() { if( ++dtor_124p32 > 2 ) count++;
                      else printf("~A ng dtor_124p32 : %d \n", dtor_124p32); }
};

struct B_124p32 {
	~B_124p32() { if( ++dtor_124p32 > 2 ) count++;
                      else printf("~B ng dtor_124p32 : %d \n", dtor_124p32); }
};

struct C_124p32 {
	~C_124p32() { if( ++dtor_124p32 <= 2 ) count++;
                      else printf("~C ng dtor_124p32 : %d \n", dtor_124p32); }
};

struct D_124p32 {
	~D_124p32() { if( ++dtor_124p32 <= 2 ) count++;
                      else printf("~D ng dtor_124p32 : %d \n", dtor_124p32); }
};

struct E_124p32 : A_124p32, B_124p32 {
	C_124p32 c;
	D_124p32 d;
	~E_124p32() { }
};
int main()
{
	{
		E_124p32 e;
	}

	if( dtor_124p32 == 4 && count == 4 ) printf("ok\n");
            else printf("ng dtor_124p32 : %d \n", dtor_124p32); 
            
}
