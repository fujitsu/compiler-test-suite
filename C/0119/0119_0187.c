#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub();
int add();
int *global;
struct tag {
  struct tag1 {
    struct tag2 {
      struct tag3 {
        int a;
        int b;
      } c;
      int d;
    } e;
    int f;
  } g;
  int h;
};

struct tag *glb;

void sub2()
{
   static  struct tag aaa = { { { { 0,1 } , 0 }, 0 }, 0 };
   struct tag *p=&aaa;
   int i,sum=0;
   glb=p;
   for( i=0;i<10;i++) {
     sum=sum+aaa.g.e.c.b;
     add();
   }
   if( sum == 55 ) puts(" SCRLP02 OK ");
   else            puts(" SCRLP02 NG ");
}
int add()
{
     (glb->g.e.c.b)++;
}
void sub1()
{
   static struct tag aaa = { { { { 1,0 } , 0 }, 0 }, 0 };
   int *p=&aaa.g.e.c.a;
   int i,sum=0;
   global=p;
   for( i=0;i<10;i++) {
     sum=sum+aaa.g.e.c.a;
     sub();
   }
   if( sum == 55 ) puts(" SCRLP02 OK");
   else            puts(" SCRLP02 NG ");
}
int main()
{
    int i,sum=0;
    global = &i;
    for(i=0;i<10;i++) {
      sub();
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts(" SCRLP02 OK");
    }
    else {
      puts(" SCRLP02 NG");
    }
    sub1();
    sub2();
exit (0);
}

int sub()
{
    (*global)++;
}
