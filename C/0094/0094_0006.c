#include <stdlib.h>
#include  <stdio.h>
int sub();
int main(){
struct {signed char a:1;} aaa;
int x=0;
for(aaa.a=0;aaa.a>=0;aaa.a++){
	if(x>20) sub();
	x++;
	}
printf(" caka0007 end\n");
}

int sub(){
	printf(" ng caka0006\n");
	exit(1);
}
