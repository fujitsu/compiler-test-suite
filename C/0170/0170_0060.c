#include <string.h>
#include <stdio.h>


int main(void)
{
  char *stp1, str1[6];
  char *stp2, str2[6];
  static char cpy[] = "abcdefghijklmnopqrstuvwxyz";
  static char res1[] = "acegi";
  static char res2[] = "bdfhj";
  char *cp;
  int i;

  printf("***** unroll014 ***** unroll 1 never 0 not 0\n");
  stp1 = str1;
  stp2 = str2;
  cp = cpy;
  for (i = 0; i < 5; i++)
    {
      *(stp1 ++) = *(cp ++);
      *(stp2 ++) = *(cp ++);
    }
  *stp1 = '\0';
  *stp2 = '\0';
  if (strcmp (str1, res1))
    {
      printf ("bxd31 1 ng %s \n",str1);
      return 0;
    }
  if (strcmp (res2, str2))
    {
      printf ("bxd31 2 ng %s \n",str2);
      return 0;
    }
  if(i!=5)
    printf ("bxd31 ng\n");
  printf ("bxd31 ok\n");
  printf("***** unroll014 ***** end\n");
}
