#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i300=1 ;
    int  i301=1 ;
    int  i302=1 ;
    int  i303=0 ;
    int  idxi=0 ;
int main()
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i300) {
     switch (i301)
      case 1 :
           if (i302)
            i303++;
    }
    else
     if (i301)
      if (i302)
        i303=0;
    if (i303==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           if (i302)
            i303++;
    }
    else
     if (i301)
      switch (i302)
           case 1 :
                i303=0;
    if (i303==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           if (i302)
            i303++;
    }
    else
     switch (i301)
      case 1 :
           if (i302)
            i303=0;
    if (i303==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           if (i302)
            i303++;
    }
    else
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303=0;
    if (i303==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303++;
    }
    else
     if (i301)
      if (i302)
        i303=0;
    if (i303==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303++;
    }
    else
     if (i301)
      switch (i302)
           case 1 :
                i303=0;
    if (i303==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303++;
    }
    else
     switch (i301)
          case 1 :
               if (i302)
                i303=0;
    if (i303==1)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i303=0;
    if (i300) {
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303++;
    }
    else
     switch (i301)
      case 1 :
           switch (i302)
            case 1 :
                 i303=0;
    if (i303==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    i303=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
