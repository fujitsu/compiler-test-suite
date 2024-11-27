#include <stdio.h>

union {
  struct tag 
  {
    int a:1;
    int b:1;
  } var;
  int c;
} x;

int func(){
  x.var.a=1;
  x.c=0;
  if (x.var.a) return 100;
  else return 200;
}
int main() 
{
  printf("%s\n", (func()==200)?"ok":"ng");
}

