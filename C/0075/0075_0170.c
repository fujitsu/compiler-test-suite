#include <string.h>
#include <stdio.h>
static void sub(char *ptr);
int main()
{
  sub ("SSSSS");
}

static char ZZ[] = "PPPPPPPPPP";
int po;

static void sub (char *ptr){
  char *ww;
  long int len = 0;
  long int i;
  printf("********** HR026 TEST START **********\n");
  ww = ptr;
  while (*ww++)
    len++;
  for (i = 1; i <= len; ++i)
    ZZ[po++] = *ptr++;
  if (memcmp (ZZ, "SSSSSPPPPP", 10))
    printf ("NG\n");
  else
    printf ("OK\n");
  printf("********** HR026 TEST  END  **********\n");
}
