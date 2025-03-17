#include <iostream>
using namespace std;

template<class T> inline T func(volatile T a){
	try{
		throw a;
	}
	catch(T x){
		cout << x  << endl;
	}
	return a;
}
int main(){
	int i = 1;
	char c = 'a';
	short s =2;
	long l = 3;
	float f = 4.0;
	double d = 5.0;
	char* cp = &c;
	func(i);
	func(c);
	func(s);
	func(l);
	func(f);
	func(d);

}
