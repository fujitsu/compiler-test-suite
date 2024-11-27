#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int x,y;
void sub() ;
int main()
{
     printf("<<<<< SCQTP03 START >>>>>\n");
     sub();
     x=(signed int)main;
     y=(signed int)sub;
     if (x!=y)
        printf("***** OK OK !! *****\n");
     else
        printf("?????? NG NG !!! ??????\n");
     printf("<<<<< SCQTP03   END >>>>>\n");
exit (0);
}
void sub()
{
         x=0;
         y=1;
}
