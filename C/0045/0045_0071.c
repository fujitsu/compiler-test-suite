#include <stdio.h>

int j;
int main()
{
  long long i;
  i=10;
  while (i>=0) {
    j++; if(j>=100) break;
    i+=1;
  }

  if (j==100 && i==109) {
   puts("OK");
  }
  else {
   puts("NG");
  }
}
