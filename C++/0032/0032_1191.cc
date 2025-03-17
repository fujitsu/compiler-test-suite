#include <iostream>

using namespace std;

struct V {int v; V(); ~V(); };
V::V(){cout << "V::V() called" << endl; v=1;}
V::~V(){cout << "V::~V() called" << endl; v=0;}
int main(){
	int i = 0;
	while(1) {
		V v;
		try{
			throw v;
		}
		catch(V x){
			break;
		}
		i++;
		if(i>5) break;
	}
}
