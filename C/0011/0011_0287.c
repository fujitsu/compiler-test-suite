#include  <stdio.h>

int l;
int main()
{
      int sub();
      l=sub();
      if( l == 10 ) puts(" OK ");
      else          puts(" NG ");
}

int sub()
{
      int j,k;
      int *p=&k;
      int sum=0;
      for(k=0;k<10;k++) {
        for(j=0;j<10;j++) {
          sum++;
          (*p)++;
        }
      }
      return sum;
}
