#include <stdio.h>


#define l(...) printf("%s %s %s\n",__VA_ARGS__);
#define m(x, y, ...) printf("%d %d %s %s \n", x, y, __VA_ARGS__);
int main()
{
  l("ok","ok","ok");
  m(1, 2, "ok2","ok2");
}

