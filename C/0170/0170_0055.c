#include <string.h>
#include <stdio.h>
int sub(int L);

int main()
{
sub(10);
}
int sub(L)
int L;
{
  char *stp, str[10];
  static char cpy[] = "abcdefghij";
  int i;

  printf("***** unroll009 ***** unroll 1 never 0 not 0\n");
  stp = str;
  for (i = 0; i < L; i++)
    *(stp + i) = *(cpy + i);
  *(stp+i) = '\0';
  *(cpy+i) = '\0';
  if (strcmp (cpy, str))
    {
      printf ("bxd14 ng cpy=%s,str=%s\n",cpy,str);
      return 0;
    }
  if(i!=10)
    printf ("bx14 ng %d\n",i);
  printf ("bx14 ok\n");
  printf("***** unroll009 ***** end\n");
}
