#include <string.h>
#include <stdio.h>


int main(void)
{
  char *stp1, str1[8];
  char *stp2, str2[8];
  static char cpy[] = "abcdefghijklmnopqrstuvwxyz";
  static char res1[] = "acegikm";
  static char res2[] = "bdfhjln";
  char *cp;
  int i;

  printf("***** unroll016 ***** unroll 1 never 0 not 0\n");
  stp1 = str1;
  stp2 = str2;
  cp = cpy;
  for (i = 0; i < 7; i++)
    {
      *(stp1 ++) = *(cp ++);
      *(stp2 ++) = *(cp ++);
    }
  *stp1 = '\0';
  *stp2 = '\0';
  if (strcmp (str1, res1))
    {
      printf ("bxd33 1 ng %s \n",str1);
      return 0;
    }
  if (strcmp (res2, str2))
    {
      printf ("bxd33 2 ng %s \n",str2);
      return 0;
    }
  if(i!=7)
    printf ("bxd33 ng\n");
  printf ("bxd33 ok\n");
  printf("***** unroll016 ***** end\n");
}
