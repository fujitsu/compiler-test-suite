#include <string.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
long long int A;
unsigned long long int B;
int sub(i) int i; { return i;}
int main(){
 char *x=(char *)malloc(20);
 char *y=(char *)malloc(20);
 int a,b;
 A=sub(2);
 B=sub(1);
 a=A;
 b=B;
 puts(a==2?"ok-1":"ng-1");
 puts(A==2?"ok-2":"ng-2");

 for (A=a+1; A>b;A--) {
   a=A;
   
   if (*(x+A)==x[A]) puts("ok-3"); else puts("ng-3");
   memcpy(x,x+A,(int)B);
   memcpy(y,y+a,(int)b);
 }
 if (x[0]==x[A+1]) puts("ok-4"); else puts("ng-4");
 if (y[0]==y[A+1]) puts("ok-5"); else puts("ng-5");
 free(x);
 free(y);
exit (0);
}
