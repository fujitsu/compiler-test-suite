#include <stdio.h>
int main()
{
  int j = 0;
  for(int i=0;i<10;i++) j=i;
    
  if( j == 9 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
