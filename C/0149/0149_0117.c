#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0410 (void);
    int  f040=0 ;
    int  f041=0 ;
    int  f042=0 ;
    int  f043=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (idxf=1;  idxf<4;  )
    {
     {
     f040++;
     }
     break;
    }
    if (f040==1 && idxf==1)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    f040++;
    break;
    }
    if (f040==1 && idxf==1)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    if (f040)
     f040++;
    break;
    }
    if (f040==2 && idxf==1)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    switch (f040)
     case 1 :
          f040++;
     break;
    }
    if (f040==2 && idxf==1)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f040=1;
    for (idxf=1;  idxf<4;  )
    {
    while (f040<4)
     f040++;
    break;
    }
    if (f040==4 && idxf==1)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    for (f040=1;  f041<4;  f040++)
    f041++;
    break;
    }
    if (f041==4 && idxf==1)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    goto  f0407;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0407skp;
 f0407:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0407skp:
    f040=0;
    for (idxf=1;  idxf<4;  )
    break;
    if (idxf==1)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0410()==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    do
    f040++;
    while (f040<4);
    break;
    }
    if (f040==4 && idxf==1)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
    ;
    break;
    }
    if (idxf==1)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f040=0;
    for (idxf=1;  idxf<4;  )
    {
 f0412:
    f040++;
    break;
    }
    if (f040==1 && idxf==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f040=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0410 (void)
 {
    for (idxf=1;  idxf<4;  )
    return(idxf);
 }
