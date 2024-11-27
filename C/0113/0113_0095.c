#include <stdio.h>

union {
  struct tag
  {
    int a:1;
    int b:1;
    int c:1;
  } x;
  float y;
} var;

int func(float *p){
  var.x.a = 1;
  *p = 2.0;
  if (var.x.a) return 100;
  else return 200;
}
int main() 
{
  float *p = (float *)&var.y;
  printf("%s\n", (func(p)==200 && var.y==2.0)?"ok":"ng");
}

