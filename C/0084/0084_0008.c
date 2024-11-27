#include <stdio.h>

void sub(void);
void sub2(void);

int main() 
{
  int i;
  for (i = 0; i < 5; ++i){
    sub();
  }
  sub2();
  return 0;
}

void sub(void)
{
  static int first = 1;
  int a;
  int b;

  if (first) {
    a = 0;
    b = 0;
    printf("%s", "initialized\n");
    first = 0;
  } else {
    a = 1;
    b = 1;
    first = 1;
  }
  printf("%d %d\n", a, b);
}

void sub2()
{
  static int stop = 0;
  stop++;
  if (stop == 10) {
    return;
  }
  printf("stop = %d\n", stop);
  sub2();
}

