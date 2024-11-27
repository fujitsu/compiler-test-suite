#include <stdio.h>

struct TAG { int x; }; 
struct TAG c;
struct TAG t[2] = { 10 , 1 };
struct TAG *gp = &t;

int n = 1;
int main()
{
  int i;
  struct TAG *p = &t;

  for(i=0;i<p->x;i++) {    
    c.x++;
    gp->x=0;
    p++;
  }

  if (c.x == 1) puts("OK");
  else         puts("NG");
}
