#include <stdio.h>

class Base1 {
public:
	int a, b;
	Base1(int i = 1, int j = 2) : a(i), b(j) { }
	int foo() { return a + b; }
};

struct D_101p31 : public Base1 { };
struct E_101p31 : public Base1 {
	E_101p31() : Base1(11, 12) { }
};
struct X_101p31 : public D_101p31, public E_101p31 { };
int main()
{
	X_101p31 x;
	if( x.E_101p31::foo() == 23 )
            printf("ok\n");
        else
            printf("ng x.E_101p31::foo() : %d \n",x.E_101p31::foo());
}
