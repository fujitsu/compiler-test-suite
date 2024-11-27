#include <stdio.h>

struct TAG { int x; }; 
struct TAG c;
struct TAG t = { 10 };
struct TAG *gp = &t;

int n = 1;

void foo(i)
int i;
{
  t.x ++;
}
int main()
{
  int i;
  struct TAG *p = &t;

  for(i=0;i<p->x;i++) {
    c.x++;
    foo();     
    gp->x=0;
  }

  if (c.x == 1) puts("OK");
  else           fprintf(stderr, "NG %d\n", c.x);
}
