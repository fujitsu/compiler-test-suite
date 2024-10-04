#include <stdio.h>
#include <string.h>
int main()
{
  int a;
  char x,y,*xx=&x,*yy=&y;

  *xx = '#';
  *yy = '#';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-1  OK    #      ***\n");
        else
           printf(" ***  TEST-1  NG    #      ***\n");


  *xx = '[';
  *yy = '[';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-2  OK    [      ***\n");
        else
           printf(" ***  TEST-2  NG    [      ***\n");


  *xx = '\\';
  *yy = '\\';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-3  OK    \\      ***\n");
        else
           printf(" ***  TEST-3  NG    \\      ***\n");


  *xx = ']';
  *yy = ']';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-4  OK    ]      ***\n");
        else
           printf(" ***  TEST-4  NG    ]      ***\n");


  *xx = '^';
  *yy = '^';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-5  OK    ^      ***\n");
        else
           printf(" ***  TEST-5  NG    ^      ***\n");


  *xx = '{';
  *yy = '{';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-6  OK    {      ***\n");
        else
           printf(" ***  TEST-6  NG    {      ***\n");


  *xx = '|';
  *yy = '|';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-7  OK    |      ***\n");
        else
           printf(" ***  TEST-7  NG    |      ***\n");


  *xx = '}';
  *yy = '}';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-8  OK    }      ***\n");
        else
           printf(" ***  TEST-8  NG    }      ***\n");


  *xx = '~';
  *yy = '~';
  if(  memcmp(xx,yy,1)==0 )

           printf(" ***  TEST-9  OK    ~      ***\n");
        else
           printf(" ***  TEST-9  NG    ~      ***\n");

}
