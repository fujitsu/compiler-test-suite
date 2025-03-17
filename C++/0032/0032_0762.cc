#include <iostream>
#include <stdio.h>
using namespace std;

union U {
#if __i386__ || __aarch64__ || __x86_64
        int i[2];
#else
	int i;
#endif
	long long l;
#if __GSP__
	U(){printf("U::U() called\n"); l=1;}
	U(U& x){printf("U::U(U&) called\n"); l=x.l;}
	~U(){printf("U::~U() called\n"); l=0;}
#else
	U(){cout << "U::U() called" << endl; l=1;}
	U(U& x){cout << "U::U(U&) called" << endl; l=x.l;}
	~U(){cout << "U::~U() called" << endl; l=0;}
#endif

} u ;
int main(){
	U uu(u);
	try{
		throw u;
	}
	catch(U x){
#if __i386__ || __aarch64__ || __x86_64
		cout << x.i[1] << endl;
#else
		cout << x.i << endl;
#endif
		cout << x.l << endl;
	}
}
