#include  <stdio.h>
#include <stdio.h>
int main()
{
    int *p;
    int sum=0;
    struct tag {
      int x,y;
    } i;
    p = &i.x;
    for(i.x=0;i.x<10;i.x++) {
      (*p)++;
      sum=sum+i.x;
    }
    if( sum == 25 ) {
      puts(" OK \n");
    }
    else {
      puts(" NG \n");
    }
}
