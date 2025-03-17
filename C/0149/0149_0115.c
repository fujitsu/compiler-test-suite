#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f0210 (void);
    int  f020=0 ;
    int  f021=0 ;
    int  f022=0 ;
    int  f023=0 ;
    int  idxf=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR FOR ** STARTED ***\n");
    for (;  idxf<4;  )
    {
     {
     f020++;
     }
     break;
    }
    if (f020==1)
     printf("*** CATEGORY-01 *** O     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    {
    f020++;
    break;
    }
    if (f020==1)
     printf("*** CATEGORY-02 *** O     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    f020=1;
    for (;  idxf<4;  )
    {
    if (f020)
     f020++;
    break;
    }
    if (f020==2)
     printf("*** CATEGORY-03 *** O     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    f020=1;
    for (;  idxf<4;  )
    {
    switch (f020)
     case 1 :
          f020++;
     break;
    }
    if (f020==2)
     printf("*** CATEGORY-04 *** O     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    f020=1;
    for (;  idxf<4;  )
    {
    while (f020<4)
     f020++;
    break;
    }
    if (f020==4)
     printf("*** CATEGORY-05 *** O     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    {
    for (f020=1;  f021<4;  f020++)
    f021++;
    break;
    }
    if (f021==4)
     printf("*** CATEGORY-06 *** O     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    goto  f0207;
     printf("*** CATEGORY-07 **** N   G ****\n");
     goto f0207skp;
 f0207:
     printf("*** CATEGORY-07 *** O     K ***\n");
 f0207skp:
    f020=0;
    for (;  idxf<4;  )
    break;
    if (idxf==0)
     printf("*** CATEGORY-08 *** O     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    if (f0210()==0)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    {
    do
    f020++;
    while (f020<4);
    break;
    }
    if (f020==4)
     printf("*** CATEGORY-10 *** O     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    {
    ;
    break;
    }
    if (idxf==0)
     printf("*** CATEGORY-11 *** O     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    f020=0;
    for (;  idxf<4;  )
    {
 f0212:
    f020++;
    break;
    }
    if (f020==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    f020=0;
   printf("*** CATEGORY ** TEST FOR -FOR- ** ENDED ***\n");
exit (0);
 }
 int f0210 (void)
 {
    for (;  idxf<4;  )
    return(idxf);
 }
