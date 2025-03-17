#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int fw0109 (void);
    int  w010=0 ;
    int  w011=0 ;
    int  w012=0 ;
    int  w013=0 ;
    int  idxw=0 ;
int 
main (void)
  {
   printf("*** CATEGORY ** TEST FOR WHILE ** STARTED ***\n");
    while (w010<4)
    w010++;
    if (w010==4)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    w010=0;
    w011=0;
    while (w010<4)
    if (w011)
     w011++;
    else
     w010++;
    if (w010==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    w010=0;
    w011=1;
    while (w010<4)
    switch (w011)
     case 1 :
          w010++;
    if (w010==4)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    w010=0;
    w011=0;
    while (w010<4)
    while (w010<4)
    w010++;
    if (w010==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    w010=0;
    while (w010<4)
    for (idxw=1;  w010<4;  idxw++)
    w010++;
    if (w010==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    w010=0;
    idxw=0;
    while (w010<4)
    do
    w010++;
    while (w010<4);
    if (w010==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    w010=0;
    while (w010<4)
    goto chkok;
     printf("*** CATEGORY-07 **** N   G ****\n");
    goto chkskp;
 chkok:
     printf("*** CATEGORY-07 *** 0     K ***\n");
 chkskp:
    w011=1;
    while (w010<4)
    break;
    if (w011==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    w010=0;
    w011=0;
    if (fw0109()==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    w010=0;
    while (w010<4)
    {
    w010++;
    w011++;
    }
    if (w010==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    w010=0;
    w011=0;
    while (w010<4)
 itsw:
    w010++;
    if (w010==4)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    w010=0;
   printf("*** CATEGORY ** TEST FOR -WHILE- ** ENDED ***\n");
exit (0);
 }
 int 
fw0109 (void)
 {
    int  w010=1;
    while (w010<4)
    return(w010);
 }
