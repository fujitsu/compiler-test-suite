#include<stdio.h>
int f2();
int f1();
 

int main()
{
  printf(" 03 START \n");
  f1();
  f2();
  printf(" 03 END   \n");
}
int f1()
{
   struct tag {
       short int a;
       struct {
         struct {
                  short int b;
         }x;
         int c;
       }y[2];
    }z;
    z.a=1;z.y[0].x.b=2;z.y[0].c=3;
    z.y[1].x.b=4;z.y[1].c=5;

 if (z.a==1 && z.y[0].x.b==2 && z.y[0].c==3&&
     z.y[1].x.b==4 && z.y[1].c==5)
    printf(" 03-1 OK\n");
 else
    printf(" 03-1 NG\n");
}
int f2()
{
   struct tag {
       short int a;
       struct {
         struct {
                  short int b:4;
                  short int bb:3;
         }x;
         int c;
       }y[2];
    }z;
    z.a=1;z.y[0].x.b=2;z.y[0].c=3;
    z.y[1].x.b=4;z.y[1].c=5;
    z.y[0].x.bb=1;z.y[1].x.bb=2;

 if (z.a==1 && z.y[0].x.b==2 && z.y[0].c==3&&
     z.y[1].x.b==4 && z.y[1].c==5 && z.y[0].x.bb==1 &&
     z.y[1].x.bb==2)
    printf(" 03-2 OK\n");
 else
    printf(" 03-2 NG\n");
}
