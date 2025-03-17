struct B {
	int i;
	B(int x);
};
B::B(int x){ i=x; }

struct D : public B {
	int i;
	D(int a);
};
D::D(int a) : B(a) { i=a; }

#include <stdio.h>
int main(){
	try{
		D d(10);
	}
	catch(...){}

        puts("ok");
}
