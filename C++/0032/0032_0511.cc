#include <iostream>
using namespace std;

struct S {
	int s;
	S();
	~S();
};

S::S() { cout << "S::S() called" << endl; }
S::~S() { cout << "S::~S() called" << endl; }

void f(S) {}
int main(){
	S s;
	s.s = 10;
	f(s);
	try{
		throw s;
	}
	catch(S x){
		cout << x.s << endl;
	}
}
