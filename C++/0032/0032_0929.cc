#include <iostream>
using namespace std;

struct B {
	int b;
	B();
	virtual B& operator=(const B&) noexcept(false);
};
B::B(){ cout << "B::B() called" << endl; b=10; }
B& B::operator=(const B& x) noexcept(false) { 
	cout << "B::operator=() called" << endl;
	b = x.b + 10; 
	return *this;
}
struct D : public B {
	int d;
	D(){ cout << "D::D() called" << endl; d=0;}
};
int main(){
	D x,y;
	y.d = 10;
	x=y;
	cout << x.b << endl;
	cout << x.d << endl;
}
