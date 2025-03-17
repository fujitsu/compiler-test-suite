#include <iostream>
using namespace std;

struct B {
	int i;
	B(int x);
	~B();
};
B::B(int x){cout << "B::B() called" << endl; i=x; }
B::~B(){cout << "B::~B() called" << endl;  i=0; }

struct D : public B {
	int i;
	D(int a);
	~D();
};
D::D(int a) : B(a) {cout << "D::D() called" << endl; i=a; }
D::~D(){cout << "D::~D() called" << endl; i=0; }
int main(){
	try{
		D d(10);
	}
	catch(...){}
}
