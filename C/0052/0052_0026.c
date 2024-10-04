

#include <string.h>
#include <stdio.h>
int main()
{
  char msg[] = "***** 29 - 01 ***** O   K *****\n";

  FILE *fp = stdout;

  printf("********** 29 TEST START **********\n");

  fwrite(msg,1,strlen(msg),fp);

  printf("********** 29 TEST  END  **********\n");
}
