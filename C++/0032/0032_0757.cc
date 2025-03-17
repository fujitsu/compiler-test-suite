#include <iostream>
using namespace std;

template<class T> inline T func(volatile T a, const T b, volatile const T c){
	try{
		return a;
	}
	catch(int){}
}
int main(){
	int i = 1;
	char c = 'a';
	short s =2;
	long l = 3;
	float f = 4.0;
	double d = 5.0;
	char* cp = &c;
	cout << func(i,i,i) << endl;
	cout << func(c,c,c) << endl;
	cout << func(s,s,s) << endl;
	cout << func(l,l,l) << endl;
	cout << func(f,f,f) << endl;
	cout << func(d,d,d) << endl;
	cout << *(func(cp,cp,cp)) << endl;
}
