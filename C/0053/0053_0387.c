#include<stdio.h>
    int  o100=0 ;
    int  o101=0 ;
    int  o102=0 ;
    int  o103=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** \n");
    {
     ;
     goto to10pp1;
    }
      printf("*** \n");
     goto fo10pp1;
 to10pp1:
      printf("*** \n");
 fo10pp1:
    {
     {
     o100++;
     }
     goto to10pp2;
    }
      printf("*** \n");
     goto fo10pp2;
 to10pp2:
      printf("*** \n");
 fo10pp2:
     o100=0;
    {
     o100++;
     goto to10pp3;
    }
      printf("*** \n");
     goto fo10pp3;
 to10pp3:
      printf("*** \n");
 fo10pp3:
    o100=1;
    {
     if (o100)
      o101++;
     goto to10pp4;
    }
      printf("*** \n");
     goto fo10pp4;
 to10pp4:
      printf("*** \n");
 fo10pp4:
    o100=1;
    o101=0;
    {
     switch (o100)
      case 1 :
           o101++;
     goto to10pp5;
    }
      printf("*** \n");
     goto fo10pp5;
 to10pp5:
      printf("*** \n");
 fo10pp5:
    o100=0;
    o101=0;
    {
     while (o100<4)
     o100++;
     goto to10pp6;
    }
      printf("*** \n");
     goto fo10pp6;
 to10pp6:
      printf("*** \n");
 fo10pp6:
    o100=0;
    {
     do
     o100++;
     while (o100<4);
     goto to10pp7;
    }
      printf("*** \n");
     goto fo10pp7;
 to10pp7:
      printf("*** \n");
 fo10pp7:
    o100=0;
    {
     for (idxo=1;  o100<4;  idxo++)
     o100++;
     goto to10pp8;
    }
      printf("*** \n");
     goto fo10pp8;
 to10pp8:
      printf("*** \n");
 fo10pp8:
    o100=0;
    {

     goto to10pp9;
    }
      printf("*** \n");
     goto fo10pp9;
 to10pp9:
      printf("*** \n");
 fo10pp9:
    o100=1;
    switch (o100)
    {
     case 1 :
          o101++;
     goto to10ppa;
    }
      printf("*** \n");
     goto fo10ppa;
 to10ppa:
      printf("*** \n");
 fo10ppa:
    o100=0;
    o101=0;
    switch (o100)
    {
     default :
          o101++;
     goto to10ppb;
    }
      printf("*** \n");
     goto fo10ppb;
 to10ppb:
      printf("*** \n");
 fo10ppb:
    o100=0;
    o101=0;
    {
 o10pp :
     o100++;
     goto to10ppc;
    }
      printf("*** \n");
     goto fo10ppc;
 to10ppc:
      printf("*** \n");
 fo10ppc:
    o100=0;
   printf("*** \n");
 }