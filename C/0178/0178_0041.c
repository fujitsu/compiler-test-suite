#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdbool.h>
#include <memory.h>
#include <string.h>

int main() {
  char *a,*b;

  printf("memcmp ret pattaern test \n");
  a="123456788";
  b="123456789";
  if (__builtin_memcmp(a,b,strlen(a))==('8'-'9')) printf("ok01 \n");
  else                                            printf("ng01 \n");
  a="123456789";
  b="123456788";
  if (__builtin_memcmp(a,b,strlen(a))==('9'-'8')) printf("ok02 \n");
  else                                            printf("ng02 \n");
  a="123456789";
  b="123456789";
  if (__builtin_memcmp(a,b,strlen(a))==0        ) printf("ok03 \n");
  else                                            printf("ng03 \n");
  printf("end \n");


}
