#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  s010=1 ;
    int  s011=0 ;
    int  s012=0 ;
    int  s013=0 ;
    int  idxs=0 ;
int main()
  {
 printf("*** CATEGORY ** TEST FOR SWITCH ** STARTED ***\n");
    switch (s010)
     case 1 :
          s011++;
    if (s011==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    s011=0;
    switch (s010)
     default:
            s011++;
    if (s011==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    s011=0;
    switch (s010) {
      case 1 :
           s011++;
           break;
      default :
           s012++;
     }
    if (s011==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    s011=2;
    s012=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                s012++;
    if (s012==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    s011=1;
    s012=0;
    switch (s010)
     case 1 :
          if (s011)
           s012++;
    if (s012==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    s011=2;
    s012=3;
    s013=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                switch (s012)
                 case 3 :
                      s013++;
    if (s013==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    s011=2;
    s012=1;
    s013=0;
    switch (s010)
     case 1 :
          switch (s011)
           case 2 :
                if (s012)
                 s013++;
    if (s013==1)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    s011=1;
    s012=2;
    s013=0;
    switch (s010)
     case 1 :
          if (s011)
          switch (s012)
           case 2 :
                s013++;
    if (s013==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    s011=1;
    s012=1;
    s013=0;
    switch (s010)
     case 1 :
          if (s011)
           if (s012)
            s013++;
    if (s013==1)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    s011=0;
    s012=0;
    s013=0;
   printf("*** CATEGORY ** TEST FOR -SWITCH- ** ENDED ***\n");
exit (0);
 }
