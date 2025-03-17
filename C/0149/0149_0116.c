#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0310 (void);
    int  f030=0 ;
    int  f031=0 ;
    int  f032=0 ;
    int  f033=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (;  ;  idxf++)
    {
     {
     f030++;
     }
     break;
    }
    if (f030==1)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    {
    f030++;
    break;
    }
    if (f030==1)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f030=1;
    for (;  ;  idxf++)
    {
    if (f030)
     f030++;
    break;
    }
    if (f030==2)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f030=1;
    for (;  ;  idxf++)
    {
    switch (f030)
     case 1 :
          f030++;
     break;
    }
    if (f030==2)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f030=1;
    for (;  ;  idxf++)
    {
    while (f030<4)
     f030++;
    break;
    }
    if (f030==4)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    {
    for (f030=1;  f031<4;  f030++)
    f031++;
    break;
    }
    if (f031==4)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    goto  f0307;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0307skp;
 f0307:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0307skp:
    f030=0;
    for (;  ;  idxf++)
    break;
    if (idxf==0)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0310()==0)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    {
    do
    f030++;
    while (f030<4);
    break;
    }
    if (f030==4)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f030=0;
    for (;  ;  idxf++)
    {
 f0312:
    f030++;
    break;
    }
    if (f030==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f030=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0310 (void)
 {
    for (;  ;  idxf++)
    return(idxf);
 }
