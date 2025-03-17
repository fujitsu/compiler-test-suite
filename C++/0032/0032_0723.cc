#include <iostream>
using namespace std;


class X{};
class Y{};
class Z: public X {};
class N {};

void f() noexcept(false) {
	X x;
	Z z;
	throw z;
}
int main(){
	try{
		f();
	}
	catch(Z){
		cout << "Z catched" << endl;
	}
}
