#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub();
struct tag {
  int a;
  int b;
};

struct tag st1 = { 1,2 };
struct tag st2[10];
struct tag st3;

struct tag2 {
  struct tag st4;
  struct tag st6[10];
  int c;
} st5;
int main()
{
        int i;
        struct tag2 *p;
        p=&st5;
        for(i=0;i<10;i++)
          st2[i] = st1;
        st3=st1;
        st3.a=st3.a+1;
        st2[5] = st3;
        p->st4 = st1;
        for(i=0;i<10;i++)
          p->st6[i] = st3;
        p->st6[5] = st1;
        sub();
        puts(" OK ");
exit (0);
}
unsigned char data[] = {
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
2,2,
1,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2
};
int sub()
{
        static int c=0;
        int i;
        for(i=0;i<10;i++) {
          if( st2[i].a != data[c++] ) puts(" NG ");
          if( st2[i].b != data[c++] ) puts(" NG ");
          if( st5.st6[i].a != data[c++] ) puts(" NG ");
          if( st5.st6[i].b != data[c++] ) puts(" NG ");
        }
}
