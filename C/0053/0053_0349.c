#include<stdio.h>
int i4 (void);
    int  i040=0 ;
    int  i041=1 ;
    int  i042=0 ;
    int  i043=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
     }
    else
     i042++;
    if (i042==1 && i041==1)
     printf("*** \n");
    else
     printf("*** \n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
       i041=0;
     }
    else
     {
     i042++;
     }
    if (i042==1 && i041==1)
     printf("*** \n");
    else
     printf("*** \n");
    i041=1;
    i042=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     if (i042)
      i042++;
     else
      i041=0;
    if (i042==2 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     switch (i042) {
      case 1 :
           i042++;
     }
    if (i042==2 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     while (i042<4)
     i042++;
    if (i042==4 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     for (idxi=1;  i042<4;  idxi++)
     i042++;
    if (i042==4 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     do
     i042++;
     while (i042<4);
    if (i042==4 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     goto it;
     printf("*** \n");
     goto it2;
 it:
    if (i041==1)
     printf("*** \n");
    else
     printf("*** \n");
 it2:
   i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     ;
    if (i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
 pass:
     i042++;
    if (i042==1 && i041==1)
      printf("*** \n");
    else
      printf("*** \n");
    i041=1;
    i042=0;
    if (i4()==1)
      printf("*** \n");
    else
      printf("*** \n");
    i042=0;
   printf("*** \n");
 }
 int 
i4 (void)
 {
    int  i040=0;
    int  i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     return(i041);
 }
