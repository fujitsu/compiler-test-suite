#include <string.h>
#include <stdio.h>

struct s_type 
{
  int i;
  char ch;
  double d;
  char str[80];
} s;

struct s_type2
{
  int i;
  int j;
} s2;


int main(void)
{
  int i;
  int j;
  
  s.i = 2;
  s.ch = 'a';
  s.d = 5.02;
  strcpy(s.str, "abcdef ghijklm");
  
  printf("%d %c %f %s\n", s.i, s.ch, s.d, s.str);
  printf("%d\n\n", sizeof(struct s_type));
  
  i = 10;
  s2.i = 100;
  s2.j = 101;
  
  printf("%d %d %d\n", i, s2.i, s2.j);
  
  return 0;
}
