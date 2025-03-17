#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0510 (void);
    int  f050=0 ;
    int  f051=0 ;
    int  f052=0 ;
    int  f053=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (idxf=1;    ;  idxf++)
    {
     {
     f050++;
     }
     break;
    }
    if (f050==1 && idxf==1)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    f050++;
    break;
    }
    if (f050==1 && idxf==1)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    if (f050)
     f050++;
    break;
    }
    if (f050==2 && idxf==1)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    switch (f050)
     case 1 :
          f050++;
     break;
    }
    if (f050==2 && idxf==1)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f050=1;
    for (idxf=1;    ;  idxf++)
    {
    while (f050<4)
     f050++;
    break;
    }
    if (f050==4 && idxf==1)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    for (f050=1;  f051<4;  f050++)
    f051++;
    break;
    }
    if (f051==4 && idxf==1)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    goto  f0507;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0507skp;
 f0507:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0507skp:
    f050=0;
    for (idxf=1;    ;  idxf++)
    break;
    if (idxf==1)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0510()==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    do
    f050++;
    while (f050<4);
    break;
    }
    if (f050==4 && idxf==1)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f050=0;
    for (idxf=1;    ;  idxf++)
    {
 f0512:
    f050++;
    break;
    }
    if (f050==1 && idxf==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f050=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0510 (void)
 {
    for (idxf=1;    ;  idxf++)
    return(idxf);
 }
