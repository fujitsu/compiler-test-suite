#include  <stdio.h>

struct argtg {
    int stmem1[100],stmem2[100];
}argst;
int main(){
    int  iarg[10][150];
    void sub1(int *a, struct argtg *b);

    iarg[9][149] = 0xff;

    sub1(iarg,&argst);
    if(argst.stmem1[50] == 456)
      printf("***** O    K *****\n");
    else
      printf("***** N    G *****\n");
}

void sub1(int *a, struct argtg *b)
{
    if(*(a+1499) == 0xff)
        b->stmem1[50] = 456;
    else{
        b->stmem1[50] = 789;
        printf(" ng\n");
        printf(" a+4999 = %x\n",*(a+4999));
        }
}
