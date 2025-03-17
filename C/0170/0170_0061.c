#include <string.h>
#include <stdio.h>


int main(void)
{
  char *stp1, str1[7];
  char *stp2, str2[7];
  static char cpy[] = "abcdefghijklmnopqrstuvwxyz";
  static char res1[] = "acegik";
  static char res2[] = "bdfhjl";
  char *cp;
  int i;

  printf("***** unroll015 ***** unroll 1 never 0 not 0\n");
  stp1 = str1;
  stp2 = str2;
  cp = cpy;
  for (i = 0; i < 6; i++)
    {
      *(stp1 ++) = *(cp ++);
      *(stp2 ++) = *(cp ++);
    }
  *stp1 = '\0';
  *stp2 = '\0';
  if (strcmp (str1, res1))
    {
      printf ("bxd32 1 ng %s \n",str1);
      return 0;
    }
  if (strcmp (res2, str2))
    {
      printf ("bxd32 2 ng %s \n",str2);
      return 0;
    }
  if(i!=6)
    printf ("bxd32 ng\n");
  printf ("bxd32 ok\n");
  printf("***** unroll015 ***** end\n");
}
