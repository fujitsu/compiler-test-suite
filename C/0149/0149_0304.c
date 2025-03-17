#include <stdlib.h>
#include <stdio.h>
#include <math.h>
struct tag {
             int m1;
            }st;
 
struct tag2 {
             struct tag  *mem[3];
             union tag3 {
                          int m2;
                          char ch[3];
                        }ary[2];
           }st2;
struct tag2 *p;
int main()
{
  printf("* CATEGORY *** TEST *** STARTED *\n");
  {
  int a=0,x=1;
  char *p1;
  char **p2;
  p1=&"abc"[2];
  p2=&p1;
  st2.mem[0]=&st;
  st.m1=1;
  p=&st2;
  st2.ary[1].m2=12;
  a=p->ary[st.m1].m2;
  st2.mem[0]->m1=3;
  st2.ary[1].ch[st2.ary[1].m2>>(&st2)->mem[0]->m1]=**p2;
  x=st2.mem[(int)sizeof(struct tag)+(-4)]->m1;
  if(a==12&&x==3)
    printf("OK1\n");
  else
    printf("NG1\n");
  if(st2.ary[1].ch[1]=='c')
    printf("OK1\n");
  else
    printf("NG2\n");
  }
  {
    int a=0,*p,i=5;
    int arr[2];
    arr[0]=1;
    arr[1]=2;
    p=&a;
    a=*(arr+1);
    if(a==arr[1])
      printf("OK3\n");
    else
      printf("NG3\n");
    a=*arr;
    if(a==1)
      printf("OK4\n");
    else
      printf("NG4\n");
    p[0]=5;
    if(*p==5)
      printf("OK5\n");
    else
      printf("NG5\n");
  }
  printf("* CATEGORY *** TEST *** ENDED ***\n");
exit (0);
}
