#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0610 (void);
    int  f060=0 ;
    int  f061=0 ;
    int  f062=0 ;
    int  f063=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (  ;  idxf<4;  idxf++)
    {
     {
     f060++;
     }
     break;
    }
    if (f060==1 && idxf==0)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    f060++;
    break;
    }
    if (f060==1 && idxf==0)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    if (f060)
     f060++;
    break;
    }
    if (f060==2 && idxf==0)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    switch (f060)
     case 1 :
          f060++;
     break;
    }
    if (f060==2 && idxf==0)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f060=1;
    for (  ;  idxf<4;  idxf++)
    {
    while (f060<4)
     f060++;
    break;
    }
    if (f060==4 && idxf==0)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    for (f060=1;  f061<4;  f060++)
    f061++;
    break;
    }
    if (f061==4 && idxf==0)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    goto  f0607;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0607skp;
 f0607:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0607skp:
    f060=0;
    for (  ;  idxf<4;  idxf++)
    break;
    if (idxf==0)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0610()==0)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    do
    f060++;
    while (f060<4);
    break;
    }
    if (f060==4 && idxf==0)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f060=0;
    for (  ;  idxf<4;  idxf++)
    {
 f0612:
    f060++;
    break;
    }
    if (f060==1 && idxf==0)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f060=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0610 (void)
 {
    for (  ;  idxf<4;  idxf++)
    return(idxf);
 }
