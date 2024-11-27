#include <stdio.h>
#include <string.h>

int main() {

  char s1[21];
  char s2[] = "two";
  char s3[4];  

  s1[20] = '\0';
  s3[3] = '\0';

  printf("%s%s\n", memcpy(s1, s2, 4), memset(s3, '000', 3));
  
  return 0;
}
