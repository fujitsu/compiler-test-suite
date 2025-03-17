#include <iostream>
using namespace std;

struct V {int v; V(); ~V(); };
V::V(){cout << "V::V() called" << endl; v=1;}
V::~V(){cout << "V::~V() called" << endl; v=0;}
int x;
int main(){
	int i = 0;
	while(i<100){
		i++;
		V v;
		try{
			throw v;
		}
		catch(V x){
			goto lab1;
		}
	}
lab1:;
}
