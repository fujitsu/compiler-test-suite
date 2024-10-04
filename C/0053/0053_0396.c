#include<stdio.h>
int t0109 (void);
int main()
 {
    int t010=1;
    int t011=0;
    int idxt ;
 printf("*** \n");
    switch (t010) {
         default : {
                 t011++;
                 t011++;
                 }
                 if(t011==2)
                   printf("*** \n");
                 else
                   printf("*** \n");
    }
    t011=0 ;
    switch (t010) {
         default :
                 t011++;
                 if(t011==1)
                   printf("*** \n");
                 else
                   printf("*** \n");
    }
    t011=1;
    switch (t010) {
         default :
                 if(t011==1)
                   printf("*** \n");
                 else
                   printf("*** \n");
    }
    t011=1;
    switch (t010) {
         default :
                 switch (t011) {
                      case 1 :
                   printf("*** \n");
                   break;
                      default :
                   printf("*** \n");
                   break;
                 }
    }
    t011=0;
    switch (t010) {
         default :
                 while(t011 < 4)
                 t011++;
                 if(t011==4)
                   printf("*** \n");
                 else
                   printf("*** \n");
    }
    t011=0;
    switch (t010) {
         default :
                 for(idxt=1;   t011<4;   idxt++)
                 t011++;
                 if(t011==4)
                   printf("*** \n");
                 else
                   printf("*** \n");
    }
    switch (t010) {
         default :
                 goto there;
 tt:             printf("*** \n");
                 break;
 there:           printf("*** \n");
                 break;
    }
    switch (t010) {
         default :
                 break ;
 ttt:            printf("*** \n");
                 goto buip;
    }
                 printf("*** \n");
 buip:
    if (t0109()==1)
     printf("*** \n");
    else
     printf("*** \n");
    switch (t010) {
     default :
             ;
             printf("*** \n");
    }
    t011=0;
    switch (t010) {
     default :
             do
             t011++;
             while(t011<4);
             if(t011==4)
               printf("*** \n");
             else
               printf("*** \n");
    }
    t011=0;
    switch (t010) {
     default :
     case 1 :
          t011++;
          if(t011==1)
            printf("*** \n");
          else
            printf("*** \n");
    }
    t011=0;
    switch (t010) {
     default :
 here:       t011++;
             if(t011==1)
               printf("*** \n");
             else
               printf("*** \n");
    }
    for (idxt=1;  idxt<4;  idxt++)  {
    switch (t010) {
     default :
             continue;
 dmyp:
               printf("*** \n");
               goto abc;
    }
    }
    printf("*** \n");
 abc:
  printf("*** \n");
 }
 int 
t0109 (void)
 {
   int  t010=1;
    switch (t010) {
     default :
             return(t010);
    }
 }
