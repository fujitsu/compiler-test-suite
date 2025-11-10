#include <string.h>
#include <stdio.h>
struct s_type 
{
  int i;
  char ch;
  double d;
  char str[80];
} s;

void sub(int a, char c, double d)
{
  s.i = a;
  s.ch = c;
  s.d = d;
  strcpy(s.str, "This test is inline struct.");

  printf("int i = %d\n", s.i);
  printf("char ch = %c\n", s.ch);
  printf("double d = %lf\n", s.d);
  printf("char str[80]  = %s\n", s.str);
}
