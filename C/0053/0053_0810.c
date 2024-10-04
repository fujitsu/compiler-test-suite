#include <stdio.h>
int main()
{ 
  unsigned int j=2;
  if( (double)~j == (double)(~(unsigned)2))
    printf(" OK \n");
  else
    printf(" NG \n");
} 
