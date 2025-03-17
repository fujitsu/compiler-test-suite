#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  char *p,*q,array1[10],c;
  static char array2[10]="KLMA";
  int a=(int)(*"5123406789"),i=0;
 
  printf("* CATEGORY *** TEST *** STARTED *\n");
 
  p=&"OSQR"[1];
  c=*p;
  if(c=='S')
    { printf("%c",c);}
  else
    { printf("NG 1\n");}
 
  q="HIEN";
  c=*(q+2);
  if(c=='E')
    { printf("%c",c); }
  else
    { printf("NG 2\n");}
 
  array1[2]=*"LTUVW";
  if(array1[2]=='L')
    { printf("%c",array1[2]);}
  else
    { printf("NG 3\n");}
 
  i=sizeof("g");
  if(i==2)
    { printf("%d",i);}
  else
    { printf("NG 4\n");}
 
  i=a;
  if(i=='5')
    { printf("%c",i); }
  else
    { printf("NG 5\n"); }
 
  c=*"CCD";
  if(c=='C')
    { printf("%c",c); }
  else
    { printf("NG 6\n"); }
 
  c=array1[2];
  if(c=='L')
    { printf("%c",c); }
  else
    { printf("NG 7\n"); }
 
  c=array2[3];
  if(c=='A')
    { printf("%c",c); }
  else
    { printf("NG 8\n"); }
 
  c=*(q+3);
  if(c=='N')
    { printf("%c",c); }
  else
    { printf("NG 9\n");}
 
  c=*("AHGWA"+2);
  if(c=='G')
    { printf("%c\n",c);
       printf("OK\n");}
  else
    { printf("NG 10\n");}
 
  printf("*** CATEGORY *** TEST *** ENDED *\n");
 
exit (0);
}
