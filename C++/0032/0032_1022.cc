

#include <stdio.h>

class Base1 {
public:
	int a, b;
	Base1(int i = 1, int j = 2) : a(i), b(j) { }
};

struct Base2 {
	int c, d;
	Base2(int i = 3, int j = 4) : c(i), d(j) { }
};

struct D1 : public Base1, public Base2 { };
struct E1 : public Base1, public Base2
	{
	E1() : Base1(11, 12), Base2(13, 14) { }
	};
struct X1 : public D1, public E1 { };

struct D_101p42 : virtual public Base1, public virtual Base2 { };
struct E_101p42 : public virtual Base1, virtual public Base2 { };
struct X_101p42 : public D_101p42, public E_101p42 { };
int main()
{
    int count = 0;
    {
	X_101p42 x;
	++x.Base2::c;
	((E_101p42 &)x).Base2::d--;
	if(((E_101p42 &)x).Base2::c == (4)) 
            count++;
        else 
            printf("ng ((E_101p42 &)x).Base2::c : %d \n",((E_101p42 &)x).Base2::c);
	if(x.d == (3))
            count++;
        else
            printf("ng x.d : %d \n",x.d);
    }

    {
	struct A_101p51 : virtual public Base1 { };
	struct B_101p51 : public virtual Base1 { };
	struct C_101p51 : public Base1 { };
	struct D_101p51 : public A_101p51, public B_101p51, public C_101p51 { };
	D_101p51 d;
	d.A_101p51::a = 101;
	d.B_101p51::b = 51;
	if(d.C_101p51::a == (1)) 
            count++;
        else
            printf("ng d.C_101p51::a : %d \n", d.C_101p51::a);

	if(d.C_101p51::b == (2))
            count++;
        else 
            printf("ng d.C_101p51::b : %d \n", d.C_101p51::b);
    }

    if ( count == 4 ) printf("ok\n");
}

