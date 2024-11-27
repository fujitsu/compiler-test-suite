#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int x;
static int y;
struct bt{
  unsigned int ba:2;
  unsigned int bb:3;
  unsigned int bc:4;
};
struct t {
  int c;
  int d;
};
int main()
{
  int a;
  int b;
  static int i;
  int *p;
  struct t *p1,s,ss;
  struct bt pbt1;
  extern struct bt *pbt;
  extern char str,*pc;
#ifdef __STDC__
  void ii(),f(),f1(struct bt*,int);
#else
  void ii(),f(),f1();
#endif

  printf("*** mptest01 start ***\n");
  ii();
l1:
  b=1;
  p=&b;
  i=0;
  a=b+1;
l2:
  if (a<10)
  {
   a=*p+1+a;
   goto l2;
  }
  x=1;
  y=2;
  p=&ss.c;
l3:
  f();
  i=i+4;
  s.c=1;
  s.d=y;
  p1=&s;
  s.c=p1->d;
  y=*p;
  s.d=y;
  f1(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    x=i+p1->c;
    pbt1.bc=x;
  } 
  pbt->bc=pbt1.bc;
  f1(&pbt1,2);
  printf("*** mptest01 end ***\n");
exit (0);
}
void f()
{
  printf("  in ''f''\n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void ii()
{
  printf("  in ''ii''\n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** ng <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** ng <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** ng <3> **\n");
  return;
}
void f1(pp,j)
  struct bt *pp;
  int j;
{
  static int i=0;
  static char *ncc="ng",cc[]="OK";
         char *c;
  printf("  in ''f1''\n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}
