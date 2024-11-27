#include <stdio.h>

struct TAG { int x; }; 
struct TAG c;
struct TAG t = { 10 };
struct TAG *gp = &t;

int n = 1;
int main()
{
  int i;
  struct TAG *p = &t;

  for(i=0;i<t.x;i++) {    
    c.x++;
    gp->x=0;
  }

  if (c.x == 1) puts("OK");
  else         puts("NG");
}
