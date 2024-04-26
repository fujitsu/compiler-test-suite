#include  <stdio.h>

__intptr_t x,y;
void sub() ;
int main()
{
     printf("<<<<< START >>>>>\n");
     sub();
     x=(__intptr_t)main;
     y=(__intptr_t)sub;
     if (x!=y)
        printf("***** OK OK !! *****\n");
     else
        printf("?????? NG NG !!! ??????\n");
     printf("<<<<< END >>>>>\n");
}
void sub()
{
         x=0;
         y=1;
}
