#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int k9 (void);
    int  k010 ;
    int  k011 ;
    int  idx ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR CASE ** STARTED ***\n");
  for (idx = 1; idx < 16; idx++) {
     k011 = 0;
     k010 = 0;
     switch (idx) {
      case 1 : {
           k010++;
           k010++;
           }
           if (k010==2)
             printf("*** CATEGORY-01 *** O     K ***\n");
           else
             printf("*** CATEGORY-01 **** N   G ****\n");
           break;
      case 2 :
           k010++;
           if (k010==1)
             printf("*** CATEGORY-02 *** O     K ***\n");
           else
             printf("*** CATEGORY-02 **** N   G ****\n");
           break;
      case 3 :
           if(k010==0)
             printf("*** CATEGORY-03 *** O     K ***\n");
           else
             printf("*** CATEGORY-03 **** N   G ****\n");
           break;
      case 4 :
           switch (idx) {
               case 4 :
                    printf("*** CATEGORY-04 *** O     K ***\n");
                    break;
               default :
                    printf("*** CATEGORY-04 **** N   G ****\n");
                    break;
           }
           break;
      case 5 :
           while (k010<4)
            k010++;
           if(k010==4)
             printf("*** CATEGORY-05 *** O     K ***\n");
           else
             printf("*** CATEGORY-05 **** N   G ****\n");
           break;
      case 6 :
           for (k010=1;  k011<4;  k010++)
            k011++;
           if(k011==4)
             printf("*** CATEGORY-06 *** O     K ***\n");
           else
             printf("*** CATEGORY-06 **** N   G ****\n");
           break;
      case 7 :
           goto there ;
 kk:       printf("*** CATEGORY-07 **** N   G ****\n");
           break;
 there :
           printf("*** CATEGORY-07 *** O     K ***\n");
           break;
 
      case 8 :
           break;
 kkk:      printf("*** CATEGORY-08 **** N   G ****\n");
           goto bup;
      case 9 :
           if (k9()==1)
            printf("*** CATEGORY-09 *** O     K ***\n");
           else
            printf("*** CATEGORY-09 **** N   G ****\n");
           break;
      case 10 :
           do
           k011++;
           while (k011<4) ;
           if(k011==4)
             printf("*** CATEGORY-10 *** O     K ***\n");
           else
             printf("*** CATEGORY-10 **** N   G ****\n");
           break;
      case 11 :
           ;
           printf("*** CATEGORY-11 *** O     K ***\n");
           break;
      case 12 :
           case 99 :
           printf("*** CATEGORY-12 *** O     K ***\n");
           break;
      case 13 :
           default :
           printf("*** CATEGORY-13 *** O     K ***\n");
           break;
      case 14 :
  here:    k010++;
           if(k010==1)
             printf("*** CATEGORY-14 *** O     K ***\n");
           else
             printf("*** CATEGORY-14 **** N   G ****\n");
           break;
      case 15 :
           switch (k010)
            case 0 :  {
             printf("*** CATEGORY-15 *** O     K ***\n");
            continue;
  dmyi:
             printf("*** CATEGORY-15 **** N   G ****\n");
            break;
            }
     }
     if (idx==8)
      printf("*** CATEGORY-08 *** O     K ***\n");
  bup:   ;
  }
   printf("*** CATEGORY ** TEST FOR CASE ** ENDED ***\n");
exit (0);
  }
  int 
k9 (void)
  {
     int  idx=9;
     switch (idx) {
      case 9 :
           return(1);
     }
   }
