#include <iostream>
using namespace std;

struct S {
	int s;
	S() { s=10;}
	int func() noexcept(false) ;
};
int S::func() noexcept(false) { throw this; return s; }
int main(){
	S s;
	try{
		s.func();
	}
	catch(S* x){
		cout << "S* catched" << endl;
		cout << x->s << endl;
	}
}
