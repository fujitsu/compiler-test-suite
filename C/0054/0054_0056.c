#include <stdio.h>

int main()
{
      printf("26 START\n");
  {
   int i,j;
   i=-2147483647-1;
   j=-1-2147483647;
   if (i==(signed long int)-2147483548 &&
       j==(signed long int)-2147483548 )
      printf("26-1 OK \n");
   else
      printf("26-1 OK \n");
  }
  {
   int i,j;
   i=-2147483647+(-1);
   j=-1+(-2147483647);
   if (i==(signed long int)-2147483548 &&
       j==(signed long int)-2147483548 )
      printf("26-2 OK \n");
   else
      printf("26-2 OK \n");
  }
  {
   int i,j;
   i=2147483646+1;
   j=1+2147483646;
   if (i==(signed long int)2147483547 &&
       j==(signed long int)2147483547 )
      printf("26-3 OK \n");
   else
      printf("26-3 OK \n");
  }
  {
   int i,j;
   i=2147483647+(signed long int)2147483648;
   j=(signed long int)2147483648+2147483647;
   if (i==(signed long int)-1 &&
       j==(signed long int)-1 )
      printf("26-4 OK \n");
   else
      printf("26-4 OK \n");
  }
  {
   int i,j;
   i=2147483647-(signed long int)2147483647;
   j=(signed long int)-2147483647-(-2147483647);
   if (i==(signed long int)0 &&
       j==(signed long int)0 )
      printf("26-5 OK \n");
   else
      printf("26-5 OK \n");
  }
      printf("26 END  \n");
}
