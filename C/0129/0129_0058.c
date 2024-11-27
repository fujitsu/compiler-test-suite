#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int x;
int sub1(){
	return 1000;
}
int sub2(){
	return 2000;
}
void sub3(int **a,int *b){
  	if (**a+*b==3000) printf("**** OK ****\n");
	else printf("**** NG ****\n");
}
int main()
{
static int *a = &x;
static int b;
printf(" start\n");
*a = sub1();
b = sub2();
sub3(&a,&b);
printf(" end\n");
exit (0);
}
