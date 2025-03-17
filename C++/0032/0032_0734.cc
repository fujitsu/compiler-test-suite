#include <iostream>
using namespace std;
int main(){
	int i = 0;
lab1:	try{
		cout << "try start" << endl;
		i++;
		if(i==3) return 0;
		throw 10;
	}
	catch(int x){
		cout << "int catched" << endl;
		goto lab1;
	}
}
