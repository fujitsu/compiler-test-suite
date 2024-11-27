#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub();
int main(){
struct {signed char a:1;} aaa;
int x=0;
for(aaa.a=0;aaa.a>=0;aaa.a++){
	if(x>20) sub();
	x++;
	}
printf("  end\n");
exit (0);
}

int sub(){
	printf(" ng \n");
	exit(1);
}
