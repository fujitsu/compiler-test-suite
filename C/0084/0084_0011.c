#include <stdio.h>
#include <string.h>

int main(void)
{
  char str[80];
  int i;
  
  strcpy(str, "hello");
  printf("%s\n", str);
  
  strcat(str, " there");
  printf("%s\n", str);
  printf("%d\n", strlen(str));

  i = strcmp("one", "one");
  printf("%d\n", i);
  i = strcmp("one", "two");
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(_LP64)
  if( i < 0 ) i = -5;
#endif
  printf("%d\n", i);
  
  return 0;
}
