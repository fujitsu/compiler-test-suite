#include <stdio.h>
int sub();


int *global;
int main()
{
    int i,sum=0;
    global = &i;
    printf("***** unroll002 ***** unroll 0 never 1 not 0\n");
    for(i=0;i<10;i++) {
      sub();
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts("ok");
    }
    else {
      puts("ng");
    }
    printf("***** unroll002 ***** end\n");
}

int sub()
{
    (*global)++;
}
