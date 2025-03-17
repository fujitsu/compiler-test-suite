#include <iostream>
using namespace std;

struct S {
	int i;
	S();
	S& operator=(const S&) ;
};
S::S(){ cout << "S::S() called" << endl; i=10; }
S& S::operator=(const S& x) { 
	cout << "S::operator=() called" << endl;
	i = x.i + 10; 
	return *this;
}
int main(){
	S s1,s2;
	try{
		throw s1;
	}
	catch(S x){
		s2 = x;
		cout << s2.i << endl;
	}
}
