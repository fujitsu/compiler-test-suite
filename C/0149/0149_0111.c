#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int d0109 (void);
    int  d010=0 ;
    int  d011=0 ;
    int  d012=0 ;
    int  d013=0 ;
    int  idxd=0 ;
int main (void)
  {
   printf("*** CATEGORY ** TEST FOR DO ** STARTED ***\n");
    do
    {
    d010++;
    }
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    d010=0;
    do
    d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    d010=0;
    d011=0;
    do
    if (d011)
     d011++;
    else
     d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    d010=0;
    d011=1;
    do
    switch (d011)
     case 1 :
          d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    d010=0;
    d011=0;
    do
    while (d010<4)
    d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    d010=0;
    do
    for (idxd=1;  d010<4;  idxd++)
    d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    d010=0;
    idxd=0;
    do
    goto chkok;
    while (d010<4);
    printf("*** CATEGORY-07 **** N   G ****\n");
    goto chkskp;
 chkok:
     printf("*** CATEGORY-07 *** 0     K ***\n");
 chkskp:
    d010=0;
    d011=1;
    do
    break;
    while (d010<4);
    if (d011==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    d010=0;
    d011=1;
    if (d0109()==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    d010=0;
    d011=0;
    do
    do
    d010++;
    while (d010<4);
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    d010=0;
    do
 itsdo:
    d010++;
    while (d010<4);
    if (d010==4)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    d010=0;
   printf("*** CATEGORY ** TEST FOR -DO- ** ENDED ***\n");
exit (0);
 }
 int d0109 (void)
 {
    int  d010=0;
    do
    return(1);
    while (d010<4);
 }
