#include <stdio.h>

long long l;

void test1()
{
  int i;
  for(i=0;i>-100;i=i+(-1)) {
    l++;
  }
}

void test2()
{
  int i;
  for(i=0;i<100;i=i-(-1)) {
    l++;
  }
}
int main()
{
  l = 0;
  test1();
  if( l!=100 ) puts("NG1");
  l = 0;
  test2();
  if( l!=100 ) puts("NG2");
  puts("OK");
}
