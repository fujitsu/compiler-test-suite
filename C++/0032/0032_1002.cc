#include <stdio.h>

class Base1 {
public:
	int a, b;
	Base1(int i = 1, int j = 2) : a(i), b(j) { }
	int foo() { return a + b; }
};

struct Base2 {
	int c, d;
	Base2(int i = 3, int j = 4) : c(i), d(j) { }
};

struct D_101p31 : public Base1, public Base2 { };

struct E_101p31 : public Base1, public Base2 {
	E_101p31() : Base1(11, 12), Base2(13, 14) { }
};

struct D_101p32 : public Base1, public Base2 { };
struct E_101p32 : public Base1, public Base2 {
	E_101p32() : Base1(11, 12), Base2(13, 14) { }
};

struct X_101p32 : public D_101p32, public E_101p32 { };
int main()
{
	X_101p32 x;
	int (D_101p32::*df)() = &D_101p32::foo;
	if((x.*df)() == 3)
            printf("ok\n");
        else
            printf("ng (x.*df)() : %d \n", (x.*df)());
}
