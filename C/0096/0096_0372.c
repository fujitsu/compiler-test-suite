#include  <stdio.h>
int main()
 {
 float *p,a;
 a=1.23;
 p=&a;
 *p=100.0;
 if (*p==100.0) printf("%4s\n","ok-1");
 else           printf("%4s\n","ng-1");
 }
