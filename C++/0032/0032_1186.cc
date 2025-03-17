#include <iostream>
using namespace std;

struct B{
	int b;
	B();
	virtual ~B();
};
B::B(){cout << "B::B() called" << endl; b=10; }
B::~B(){cout << "B::~B() called" << endl; b=0; }

struct D : public B {
	int d;
	D();
	~D();
};
D::D(){cout << "D::D() called" << endl; d=20; }
D::~D(){cout << "D::~D() called" << endl; d=0; }
int main(){
	B* p = new D();
	try{
		throw p;
	}
	catch(B* x){
		delete x;
	}
}
