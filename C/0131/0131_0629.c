#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct msg1{
           int a;
           }x;
struct msg2{
           int b;
           }y;
int main(){
int i;int array[10];
x.a=8;
y.b=8;
for(i=x.a-y.b;i<10;i++) array[i]=i;
for(i=0;i<10;i++)  printf("array[%d]=%d \n",i,array[i]);
	exit(0);
}
