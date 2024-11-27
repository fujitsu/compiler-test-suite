#include <stdio.h>

struct tag {
  int a:1;
  int b:1;
  int c:1;
} var;

int func(int *p){
  var.a = 1;
  *p = 0;
  if (var.a) return 100;
  else return 200;
}
int main() 
{
  int *p = (int *)&var;
  printf("%s\n", (func(p)==200)?"ok":"ng");
}

