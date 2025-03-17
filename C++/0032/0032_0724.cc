#include <iostream>
using namespace std;

struct B {
	int b;
	B(){cout << "B::B() called" << endl; b=10;}
	virtual ~B() noexcept(false) ;
};

B::~B() noexcept(false) {cout << "B::~B() called" << endl; b = 0; }

struct D: public B{
	int d;
	D(){cout << "D::D() called" << endl; d = 20; }
};
int main(){
	D x;
}
