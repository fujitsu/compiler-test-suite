#include <stdio.h>

int check (int a, int b) 
{
  if (a != b)
    puts ("NG");

  return 0;
}

int sub (int a, int b) {
  check (a, b);
  return a * b;
  check (a, b);
}


int main() {
  int ret = 0;
  int i;

  for (i = 0; i < 123; i++) {
    if (i % 4)
      ret += sub (i,i);
  }

  if (ret == 461465)
    puts ("OK");
}
