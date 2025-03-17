#include <stdio.h>
class B {public: int i;  B():i(10){} }bobj;
B carray2[]={bobj};



int main(){
 if (carray2[0].i != 10 ) { printf("ng\n");} else { printf("ok\n");} 
}





