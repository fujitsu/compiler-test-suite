#include <stdio.h>

struct tag {
  int a:2;
  int b:1;
} var;

int func() {
  var.a=1;
  if (var.a) return 100;
  else return 200;
}
int main() 
{
  printf("%s\n", (func()==100)?"ok":"ng");
}

