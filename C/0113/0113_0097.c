#include <stdio.h>

struct tag 
{
  int a:1;
  int b:1;
} var;

int func(struct tag *p, struct tag *q) {
  p->a=1;
  q->b=0;
  if (p->a) return 100;
  else return 200;
}
int main() 
{
  var.a=1;
  var.b=0;
  printf("%s\n", (func((struct tag *)&var, (struct tag *)&var)==100)?"ok":"ng");
}

