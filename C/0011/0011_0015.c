#include <stdio.h>

int si = 20;
int main(){
    int a,b,c,sub1(int,int);
    unsigned char ch1,ch2,sub2(int,char);

    a = 1;
    b = 1;
    ch1 = 0xff;

    c = sub1(a,b);
    if(c == 0)
      printf("***** 01 *** O    K *****\n");
    else
      printf("***** 01 *** N    G *****\n");

    ch2 = sub2(a,ch1);
    if(ch2 == 0xff)
      printf("***** 02 *** O    K *****\n");
    else
      printf("***** 02 *** N    G *****\n");
}

int sub1(int a, int b)
{
    int c,d;
    a = 1;
    d = 0;
    if(a == 1)
       return 0;
    else
       return 1;
}

unsigned char sub2(int i, char ch)
{
    int a=0;
    si -= 1;

    if(si != 0)
       return sub2(a,ch);
    else
     {
       return ch;
     }
}
