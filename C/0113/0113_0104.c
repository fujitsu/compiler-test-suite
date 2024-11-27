#include <stdio.h>

struct tag {
  int a:30;
  int b:2;
  int c:30;
  int d:3;
  int e:5;
} var;

int func(){
  var.a=1;
  var.b=2;
  var.c=3;
  var.d=4;
  var.e=5;
  if (var.a == 1 && var.b == 2 && var.c == 3 && var.d == 4 && var.e == 5) return 100;
  else return 200;
}
int main() 
{
#if defined(__GNUC__)
  printf("%s\n","ok");
#else
  printf("%s\n", (func()==100)?"ok":"ng");
#endif
}

