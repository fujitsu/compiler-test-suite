#include <stdio.h>

int main(){
    int a,b,c,sub1(int,int),sub2(int,char);
    char ch1;

    a = 1;
    b = 1;
    ch1 = 0xf0;

    c = sub1(a,b);
    if(c == 0)
      printf("***** 01 *** O    K *****\n");
    else
      printf("***** 01 *** N    G *****\n");

    c = sub2(a,ch1);
    if(c == 0)
      printf("***** 02 *** O    K *****\n");
    else
      printf("***** 02 *** N    G *****\n");
}

int sub1(int a, int b){
    int c,d;
    c = 1;
    d = 0;
    return 0;
}

/*                                     */
int sub2(int a, char b){
    if(a == 1)
      return 0;
    else
      return 1;
}
