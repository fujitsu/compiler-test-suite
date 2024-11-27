#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

int main()
{
  int a;
  char x,y,*xx=&x,*yy=&y;

  *xx = '#';
  *yy = '#';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '[';
  *yy = '[';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '\\';
  *yy = '\\';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \\      ***\n");
        else
           printf(" *** \\      ***\n");


  *xx = ']';
  *yy = ']';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '^';
  *yy = '^';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '{';
  *yy = '{';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '|';
  *yy = '|';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '}';
  *yy = '}';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");


  *xx = '~';
  *yy = '~';
  if(  memcmp(xx,yy,1)==0 )

           printf(" *** \n");
        else
           printf(" *** \n");

exit (0);
}
