struct S {};
#include <stdio.h>
int main(){
	try{
	}
	catch(int&){}
	catch(const int&){}
	catch(volatile int&){}
	catch(S&){}
	catch(const S&){}
	catch(volatile S&){}

        puts("ok");
}
