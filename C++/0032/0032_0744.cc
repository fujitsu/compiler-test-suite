#include <iostream>
using namespace std;

struct V {
	int v; 
	void f(){
		int i = 0;
		while(1) {
			i++;
			if(i==3) break;
			V v;
			try{
				throw v;
			}
			catch(V x){
				continue;
			}
		}
	}
	V(){cout << "V::V() called" << endl; v=1;}
	~V(){cout << "V::~V() called" << endl; v=0;}
};
int main(){
	V x;
	x.f();
}
