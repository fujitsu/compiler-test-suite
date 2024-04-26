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
   if( sum == 55 ) puts(" OK ");
   else            puts(" NG ");
}
int add()
{
     (glb->g.e.c.b)++;
     return 0;
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
   if( sum == 55 ) puts(" OK");
   else            puts(" NG ");
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
      puts(" OK");
    }
    else {
      puts(" NG");
    }
    sub1();
    sub2();
}

int sub()
{
    (*global)++;
    return 0;
}
