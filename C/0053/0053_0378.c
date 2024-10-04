#include<stdio.h>
int fo112 (void);
    int  o010=1 ;
    int  o011=0 ;
    int  o012=0 ;
    int  o013=0 ;
    int  idxo=0 ;
int 
main (void)
  {
  printf("*** \n");
    {
     ;

    }
    if (o010==1)
      printf("*** \n");
    else
      printf("*** \n");
    o010=0;
    {
     {
     o010++;
     }

    }
    if (o010==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    {
     o010++;

    }
    if (o010==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=1;
    {
     if (o010)
      o011++;

    }
    if (o011==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=1;
    o011=0;
    {
     switch (o010)
      case 1 :
           o011++;

    }
    if (o011==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    o011=0;
    {
     while (o010<4)
     o010++;

    }
    if (o010==4)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    {
     do
     o010++;
     while (o010<4);

    }
    if (o010==4)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    {
     for (idxo=1;  o010<4;  idxo++)
     o010++;

    }
    if (o010==4)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    idxo=0;
    {
     goto o1p;

    }
     printf("*** \n");
     goto o1pe;
 o1p:
     printf("*** \n");
 o1pe:
    o010=1;
    for (idxo=1;  idxo<4;  idxo++)
    {
     continue;

    }
    if (idxo==4)
     printf("*** \n");
    else
     printf("*** \n");
    o010=1;
    idxo=0;
    for (idxo=1;  o010<4;  idxo++)
    {
     break;

    }
    if (o010==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    if (fo112()==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=1;
    {


    }
    if (o010==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=1;
    switch (o010)
    {
     case 1 :
          o011++;

    }
    if (o011==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    o011=0;
    switch (o010)
    {
     default :
          o011++;

    }
    if (o011==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
    o011=0;
    {
 o1pp :
     o010++;

    }
    if (o010==1)
     printf("*** \n");
    else
     printf("*** \n");
    o010=0;
   printf("*** \n");
 }
 int 
fo112 (void)
 {
    {
     return(1);

    }
 }
