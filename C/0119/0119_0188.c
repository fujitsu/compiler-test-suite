#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>
int main()
{
    int *p;
    int i,sum=0;
    p = &i;
    for(i=0;i<10;i++) {
      (*p)++;
      sum=sum+i;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
exit (0);
}
