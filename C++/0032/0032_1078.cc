struct B {
	int b;
	B(){ b=10;}
	virtual void f() noexcept(false) = 0;
};

struct D : public B {
	int d;
	D(){ d=20; }
	~D(){ d=0; }
	void f() noexcept(false);
};

void D::f() noexcept(false) {}
	
#include <stdio.h>
int main(){
	D d;

        puts("ok");
}
