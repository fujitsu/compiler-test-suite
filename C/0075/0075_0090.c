#include <stdio.h>
int main()
{
  unsigned char c[1] = { 0xff };
  unsigned int j = (signed long)(signed char)c[0] ;
  if (j != -1) 
	  printf("NG %d\n", j);
  else
          puts("OK");
}
