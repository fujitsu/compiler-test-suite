#include <iostream>
using namespace std;

struct S {
	int i;
	S(int x=1,int y=2){
		i=x+y;
	}
	~S(){i=0;}
};

struct R : public S {
	int r;
	R() : S(10,20) {}
	~R(){}
};
int main(){
	R a;
	cout << a.i << endl;
}
