#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int t0109 (void);
int main (void)
 {
    int t010=1;
    int t011=0;
    int idxt ;
 printf("*** CATEGORY ** TEST FOR DEFAULT ** STARTED ***\n");
    switch (t010) {
         default : {
                 t011++;
                 t011++;
                 }
                 if(t011==2)
                   printf("*** CATEGORY-01 *** O     K ***\n");
                 else
                   printf("*** CATEGORY-01 **** N   G ****\n");
    }
    t011=0 ;
    switch (t010) {
         default :
                 t011++;
                 if(t011==1)
                   printf("*** CATEGORY-02 *** O     K ***\n");
                 else
                   printf("*** CATEGORY-02 **** N   G ****\n");
    }
    t011=1;
    switch (t010) {
         default :
                 if(t011==1)
                   printf("*** CATEGORY-03 *** O     K ***\n");
                 else
                   printf("*** CATEGORY-03 **** N   G ****\n");
    }
    t011=1;
    switch (t010) {
         default :
                 switch (t011) {
                      case 1 :
                   printf("*** CATEGORY-04 *** O     K ***\n");
                   break;
                      default :
                   printf("*** CATEGORY-04 **** N   G ****\n");
                   break;
                 }
    }
    t011=0;
    switch (t010) {
         default :
                 while(t011 < 4)
                 t011++;
                 if(t011==4)
                   printf("*** CATEGORY-05 *** O     K ***\n");
                 else
                   printf("*** CATEGORY-05 **** N   G ****\n");
    }
    t011=0;
    switch (t010) {
         default :
                 for(idxt=1;   t011<4;   idxt++)
                 t011++;
                 if(t011==4)
                   printf("*** CATEGORY-06 *** O     K ***\n");
                 else
                   printf("*** CATEGORY-06 **** N   G ****\n");
    }
    switch (t010) {
         default :
                 goto there;
 tt:             printf("*** CATEGORY-07 **** N   G ****\n");
                 break;
 there:           printf("*** CATEGORY-07 *** O     K ***\n");
                 break;
    }
    switch (t010) {
         default :
                 break ;
 ttt:            printf("*** CATEGORY-08 **** N   G ****\n");
                 goto buip;
    }
                 printf("*** CATEGORY-08 *** O     K ***\n");
 buip:
    if (t0109()==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    switch (t010) {
     default :
             ;
             printf("*** CATEGORY-10 *** O     K ***\n");
    }
    t011=0;
    switch (t010) {
     default :
             do
             t011++;
             while(t011<4);
             if(t011==4)
               printf("*** CATEGORY-11 *** O     K ***\n");
             else
               printf("*** CATEGORY-11 **** N   G ****\n");
    }
    t011=0;
    switch (t010) {
     default :
     case 1 :
          t011++;
          if(t011==1)
            printf("*** CATEGORY-12 *** O     K ***\n");
          else
            printf("*** CATEGORY-12 **** N   G ****\n");
    }
    t011=0;
    switch (t010) {
     default :
 here:       t011++;
             if(t011==1)
               printf("*** CATEGORY-13 *** O     K ***\n");
             else
               printf("*** CATEGORY-13 **** N   G ****\n");
    }
    for (idxt=1;  idxt<4;  idxt++)  {
    switch (t010) {
     default :
             continue;
 dmyp:
               printf("*** CATEGORY-14 **** N   G ****\n");
               goto abc;
    }
    }
    printf("*** CATEGORY-14 *** O     K ***\n");
 abc:
  printf("*** CATEGORY **TEST FOR DEFAULT ** ENDED ***\n");
exit (0);
 }
 int t0109 (void)
 {
   int  t010=1;
    switch (t010) {
     default :
             return(t010);
    }
 }
