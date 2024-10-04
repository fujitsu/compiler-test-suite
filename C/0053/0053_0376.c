#include<stdio.h>
int k9 (void);
    int  k010 ;
    int  k011 ;
    int  idx ;
int 
main (void)
  {
    printf("*** \n");
  for (idx = 1; idx < 16; idx++) {
     k011 = 0;
     k010 = 0;
     switch (idx) {
      case 1 : {
           k010++;
           k010++;
           }
           if (k010==2)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 2 :
           k010++;
           if (k010==1)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 3 :
           if(k010==0)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 4 :
           switch (idx) {
               case 4 :
                    printf("*** \n");
                    break;
               default :
                    printf("*** \n");
                    break;
           }
           break;
      case 5 :
           while (k010<4)
            k010++;
           if(k010==4)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 6 :
           for (k010=1;  k011<4;  k010++)
            k011++;
           if(k011==4)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 7 :
           goto there ;
 kk:       printf("*** \n");
           break;
 there :
           printf("*** \n");
           break;

      case 8 :
           break;
 kkk:      printf("*** \n");
           goto bup;
      case 9 :
           if (k9()==1)
            printf("*** \n");
           else
            printf("*** \n");
           break;
      case 10 :
           do
           k011++;
           while (k011<4) ;
           if(k011==4)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 11 :
           ;
           printf("*** \n");
           break;
      case 12 :
           case 99 :
           printf("*** \n");
           break;
      case 13 :
           default :
           printf("*** \n");
           break;
      case 14 :
  here:    k010++;
           if(k010==1)
             printf("*** \n");
           else
             printf("*** \n");
           break;
      case 15 :
           switch (k010)
            case 0 :  {
             printf("*** \n");
            continue;
  dmyi:
             printf("*** \n");
            break;
            }
     }
     if (idx==8)
      printf("*** \n");
  bup:   ;
  }
   printf("*** \n");
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
