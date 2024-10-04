#include <stdio.h>
int main()
{
struct tag1 {
          int a;
          struct { int b;
                   int c[2]; 
                   int d[2][2];
                   int *e;
                 }p;
          };
struct tag2 {
          struct { 
                  struct {
                           int a; 
                           int b[2][2][2]; 
                         }st2[2];
                  }st1;
         };

static int x1=(char *)(&((&(((struct tag1 *)0)->p))->b)) - (char *)0;
static int x2=(char *)(((struct tag1 *)0)->p.c)- (char *)0;
static int x3=(char *)(&(((struct tag1 *)0)->p.c[0]))- (char *)0;
static int x4=(char *)(((struct tag1 *)0)->p.d[1])- (char *)0;
static int x5=(char *)(&(((struct tag1 *)0)->p.e))- (char *)0;
static int y1=(char *)(&(((struct tag2 *)0)->st1.st2[0].b[1][1][1])) - (char *)0;
#if __x86_64__ || __aarch64__
if(x1==8)  printf("-1 ok \n"); else printf("-1 ng %d\n",x1);
if(x2==12)  printf("-2 ok \n"); else printf("-2 ng %d\n",x2);
if(x3==12)  printf("-3 ok \n"); else printf("-3 ng %d\n",x3);
if(x4==28) printf("-4 ok \n"); else printf("-4 ng %d\n",x4);
if(x5==40) printf("-5 ok \n"); else printf("-5 ng %d\n",x5);
if(y1==32) printf("-6 ok \n"); else printf("-6 ng %d\n",y1);
#else
if(x1==4)  printf("-1 ok \n"); else printf("-1 ng %d\n",x1);
if(x2==8)  printf("-2 ok \n"); else printf("-2 ng %d\n",x2);
if(x3==8)  printf("-3 ok \n"); else printf("-3 ng %d\n",x3);
if(x4==24) printf("-4 ok \n"); else printf("-4 ng %d\n",x4);
if(x5==32) printf("-5 ok \n"); else printf("-5 ng %d\n",x5);
if(y1==32) printf("-6 ok \n"); else printf("-6 ng %d\n",y1);
#endif
}
