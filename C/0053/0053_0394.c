#include<stdio.h>
int r012 (void);
int r011 (void);
    int  r010=1 ;
int 
main (void)
  {
 printf("*** \n");
    if (r011()==1)
      printf("*** \n");
    else
      printf("*** \n");
    r012();
    if (r010==2)
      printf("*** \n");
    else
      printf("*** \n");
 printf("*** \n");
 }
 int 
r011 (void)
 {
   return(r010);
 }
 int 
r012 (void)
 {
   r010++;
   return 0;
 }
