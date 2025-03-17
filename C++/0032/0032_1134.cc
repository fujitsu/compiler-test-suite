#include <iostream>
#include <stdio.h>

using namespace std;

struct S{
	int i;
#if __GSP__
	S(){printf("S::S() called\n"); i = 10;}
	S(S& x){printf("S::S(S&) called\n"); i = x.i;}
	~S(){printf("S::~S() called\n"); i = 0; }
#else
	S(){cout << "S::S() called" << endl; i = 10;}
	S(S& x){cout << "S::S(S&) called" << endl; i = x.i;}
	~S(){cout << "S::~S() called" << endl; i = 0; }
#endif
};

S s1;
S s2;
S func(S x){
	throw 10;
	return x;
}
int main(){
	int i=0;
	S a1;
	S a2;
	S a3;
	for(S c1;;){
		i++;
		if(i==3) break;
		S b1;
		try{
			S b1;
			S b2;
			S b3;
			S d1;
			S d2;
			switch(i){
			case 0:
			{
				S e1;
				S e2;
				break;
			}
			}
			func(b1);
			break;
		}
		catch(...){
			cout << "... catched" << endl;
		}
		continue;
	}
}
	
