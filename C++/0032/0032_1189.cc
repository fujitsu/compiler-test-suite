#include <iostream>
using namespace std;

struct B {
	int b;
	int f() { return 10; }
};

struct D : public B {
	int d;
	virtual int f() { return 20; }
};

struct DD : public D {
	int dd;
	int f() { return 30; }
};
int main(){
	DD d;
	DD* dp = &d;
	try{
		throw dp;
	}
	catch(B* x){
		cout << x->f() << endl;
	}
}
