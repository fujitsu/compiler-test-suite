#include <stdio.h>
#include <string.h>

int main() {

  char s1[]="ABCDEFGHIJ";
  char *s2="789\000123456";

  printf("%s\n",s1); 
  printf("%s\n", memcpy(s1, s2, 6)); 
  printf("%s\n",s1); 
  printf("%s\n",s1 + 4); 

  return 0;
}
