#include <stdio.h>
long double foo(float i) {
   int l;
   long double k=0;
   for(l=0;l<1;l++) k=k+i; return k;
}
int main() {
 int sum=0;
 int sum1=57;
 double sum2=57.0;

 sum2=(sum2+foo(sum2))/2;
 if( sum == 0 &&
     sum1 == 57 &&
     sum2 == 57.0 ) puts("OK");
 else               puts("NG");
 
}
