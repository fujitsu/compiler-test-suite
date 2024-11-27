#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int L);
int main()
{
  sub(10);
exit (0);
}

int sub(L)
     int L;
{
  
  char *stp1, str1[11];
  char *stp2, str2[11];
  static char cpy[] = "abcdefghijklmnopqrstuvwxyz";
  static char res1[] = "acegikmoqs";
  static char res2[] = "bdfhjlnprt";
  char *cp;
  int i;

  printf("***** unroll017 ***** unroll 1 never 0 not 0\n");
  stp1 = str1;
  stp2 = str2;
  cp = cpy;
  for (i = 0; i < L; i++)
    {
      *(stp1 ++) = *(cp ++);
      *(stp2 ++) = *(cp ++);
    }
  *stp1 = '\0';
  *stp2 = '\0';
  if (strcmp (str1, res1))
    {
      printf ("bxd34 1 ng %s \n",str1);
      return 0;
    }
  if (strcmp (res2, str2))
    {
      printf ("bxd34 2 ng %s \n",str2);
      return 0;
    }
  if(i!=L)
    printf ("bxd34 ng\n");
  printf ("bxd34 ok\n");
  printf("***** unroll017 ***** end\n");
}
