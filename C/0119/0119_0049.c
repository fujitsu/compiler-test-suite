#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct argtg {
    int stmem1[100],stmem2[100];
}argst;
int main(){
    int  iarg[10][150];
    void sub1();

    iarg[9][149] = 0xff;

    sub1(iarg,&argst);
    if(argst.stmem1[50] == 456)
      printf("***** SCOSC14 *** O    K *****\n");
    else
      printf("***** SCOSC14 *** N    G *****\n");
exit (0);
}

void sub1(int *a, struct argtg *b)
{
    if(*(a+1499) == 0xff)
        b->stmem1[50] = 456;
    else{
        b->stmem1[50] = 789;
        printf(" a+4999 = %x\n",*(a+4999));
        }
}
