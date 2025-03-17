#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0110 (void);
    int  f010=0 ;
    int  f011=0 ;
    int  f012=0 ;
    int  f013=0 ;
    int  idxf=0 ;
int 
main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (idxf=1;  ;  )
    {
     {
     f010++;
     }
     break;
    }
    if (f010==1 && idxf==1)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    {
    f010++;
    break;
    }
    if (f010==1 && idxf==1)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f010=1;
    for (idxf=1;  ;  )
    {
    if (f010)
     f010++;
    break;
    }
    if (f010==2 && idxf==1)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f010=1;
    for (idxf=1;  ;  )
    {
    switch (f010)
     case 1 :
          f010++;
     break;
    }
    if (f010==2 && idxf==1)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f010=1;
    for (idxf=1;  ;  )
    {
    while (f010<4)
     f010++;
    break;
    }
    if (f010==4 && idxf==1)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    {
    for (f010=1;  f011<4;  f010++)
    f011++;
    break;
    }
    if (f011==4 && idxf==1)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    goto  f0107;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0107skp;
 f0107:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0107skp:
    f010=0;
    for (idxf=1;  ;  )
    break;
    if (idxf==1)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0110()==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    {
    do
    f010++;
    while (f010<4);
    break;
    }
    if (f010==4 && idxf==1)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f010=0;
    for (idxf=1;  ;  )
    {
 f0112:
    f010++;
    break;
    }
    if (f010==1 && idxf==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f010=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int 
f0110 (void)
 {
    for (idxf=1;  ;  )
    return(idxf);
 }
