#include <stdio.h>

union 
{
  struct tag 
  {
    int a:1;
    int b:1;
  } x;
  int y;
} var;

int func(struct tag *p, int *q) {
  p->a=1;
  *q=0;
  if (p->a) return 100;
  else return 200;
}
int main() 
{
  var.x.a=1;
  var.x.b=0;

  printf("%s\n", (func((struct tag *)&var.x, (int *)&var.y)==200)?"ok":"ng");

}

