
#include <stdio.h>
struct tag {
  struct tag1 
  {
    struct tag2 
    {
      int a:28;
      int b:4;
      int c:30;
      int d:3;
      int e:5;
    } x;
    struct tag3 {
      int a:28;
      int b:4;
      int c:30;
      int d:3;
      int e:5;
    } y;
  } z;
} var;

int func(){
  var.z.x.a=1;
  var.z.x.b=2;
  var.z.x.c=3;
  var.z.x.d=4;
  var.z.x.e=5;
  var.z.y.a=5;
  var.z.y.b=4;
  var.z.y.c=2;
  var.z.y.d=3;
  var.z.y.e=1;
  if (var.z.x.a == 1 && var.z.x.b == 2 && var.z.x.c == 3 && var.z.x.d == 4 && var.z.x.e == 5) return 100;
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

