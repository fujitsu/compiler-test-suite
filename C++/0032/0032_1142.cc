#include <iostream>
using namespace std;

template <class T>
struct R {
	T r;
};

template <class T>
struct S {
	int i;
	int func1(volatile T) noexcept(false);
	int func2(const T)noexcept(false);
	int func3(const volatile T)noexcept(false);
};

template <class T>
int S<T>::func1(volatile T t)noexcept(false){
	R<int> x;
	x.r = 10;
	throw x;
	return i;
}

template <class T>
int S<T>::func2(const T t)noexcept(false){
	R<char> x;
	x.r = 'a';
	throw x;
	return i;
}

template <class T>
int S<T>::func3(const volatile T t)noexcept(false){
	R<short> x;
	x.r = 20;
	throw x;
	return i;
}
int main(){
	int i = 1;
	char c = 'a';
	char* cp = &c;
	S<int> si;
	try{ si.func1(i); }
	catch(R<int> x){ cout << "R<int> catched : " << x.r << endl; }
	try{ si.func2(++i); }
	catch(R<char> x){ cout << "R<char> catched : " << x.r << endl; }
	try{ si.func3(++i); }
	catch(R<short> x){ cout << "R<short> catched : " << x.r << endl; }
	S<char*> scp;
	try{ scp.func1(cp); }
	catch(R<int> x){ cout << "R<int> catched : " << x.r << endl; }
	try{ scp.func2(cp); }
	catch(R<char> x){ cout << "R<char> catched : " << x.r << endl; }
	try{ scp.func3(cp); }
	catch(R<short> x){ cout << "R<short> catched : " << x.r << endl; }
}
