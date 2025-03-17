#include <stdio.h>
struct B {
	int b;
	virtual int f() { return 10; }
	virtual ~B() { printf("B::~B() called\n");; b = 0; }
};

struct D : public B {
	int d;
	int f() { return 20; }
	virtual ~D() { printf("D::~D() called\n");; d = 0; }
};

struct DD : public D{
	int dd;
	int f() { return 30; }
	virtual ~DD() { printf("DD:~DD() called\n");; dd = 0; }
};
int main(){
	DD d;
	DD& dp = d;
	try{
		try{
			throw dp;
		}
		catch(B& x){
			printf("1\n");
			throw x;
		}
	}
	catch(B& x){
			printf("2\n");
	}
}
