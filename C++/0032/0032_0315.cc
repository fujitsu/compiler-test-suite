#include <stdio.h>
int a;
int b = 1;
int c = b + 1;
int d = b + c;
int e = 1 + 2 + 3;

int ary[] = {1,2,3,4};
int ary2[] = {a,b,c,d,e};
int ary3[2][3] = {{a+1,b+1,c+1}, {10,20,30}};

struct A {
  int a;
  int b;
  int c[3];
}aobj = {1,2,{3,4,5}};
struct A aobj2[2] = {10,20,30,40,50,100,200,300,400,a+1};

int *p = ary;
int *p2 = (int*)ary + 1;
int *p3 = &aobj.b;
int main()
{
  if (a==0 && b==1 && c==2 && d==3 && e==6 &&
      ary[0]==1 && ary[1]==2 && ary[2]==3 && ary[3]==4 &&
      ary2[0]==0 && ary2[1]==1 && ary2[2]==2 && ary2[3]==3 && ary2[4]==6 &&
      ary3[0][0]==1 && ary3[0][2]==3 && ary3[1][1]==20 && ary3[1][2]==30 &&
      aobj.a==1 && aobj.b==2 && aobj.c[0]==3 && aobj.c[1]==4 && aobj.c[2]==5 &&
      aobj2[0].a==10 && aobj2[0].c[1]==40 && aobj2[1].c[2]==1 &&
      *p == 1 && *p2==2 && *p3==2)
    printf("ok\n");
  else
    printf("ng\n");
}
