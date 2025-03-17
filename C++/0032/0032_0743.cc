#include <iostream>
using namespace std;

struct B {
	int i;
	B(int x){cout << "B::B() called" << endl; i=x; throw 10;}
	~B(){cout << "B::~B() called" << endl;  i=0; }
};

struct D : public B {
	int i;
	D(int a) noexcept(false) : B(a) {cout << "D::D() called" << endl; i=a; }
	~D(){cout << "D::~D() called" << endl; i=0; }
};
int main(){
	try{
		D d(10);
	}
	catch(...){
		cout << "... catched" << endl;
	}
}
