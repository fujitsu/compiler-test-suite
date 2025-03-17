#include <stdio.h>

class B {public: int i;  B():i(10){} }bobj;
B carray2[]={bobj};

int main(){
  int work = 0;
#pragma omp parallel
 if (carray2[0].i != 10 ) work++;

 if ( !work )
   printf("ok\n");
 else
   printf("ng\n");

 return 0;
}





