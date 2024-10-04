#include<stdio.h>
int func12 (void);
int func11 (void);
int func10 (void);
int func9 (void);
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);
    int  o130=0 ;
    int  o131=0 ;
    int  o132=0 ;
    int  o133=0 ;
    int  idxo=0 ;
int 
main (void)
  {
  printf("*** \n");
    if (func1()==1)
      printf("*** \n");
    else
      printf("*** \n");
    if (func2()==1)
      printf("*** \n");
    else
      printf("*** \n");
     o130=0;
    if (func3()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o130=1;
    if (func4()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o130=1;
    o131=0;
    if (func5()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
    o131=0;
    if (func6()==4)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
    if (func7()==4)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
    if (func8()==4)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
    if (func9()==9)
      printf("*** \n");
    else
      printf("*** \n");
    o130=1;
    if (func10()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
    o131=0;
    if (func11()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o131=0;
    if (func12()==1)
      printf("*** \n");
    else
      printf("*** \n");
    o130=0;
   printf("*** \n");
 }
 int 
func1 (void)
 {
    {
     ;
     return(1);
    }
 }
 int 
func2 (void)
 {
    int  o130=0;
    {
     {
     o130++;
     }
     return(o130);
    }
 }
 int 
func3 (void)
 {
    int  o130=0;
    {
     o130++;
     return(o130);
    }
 }
 int 
func4 (void)
 {
    int  o130=1;
    int  o131=0;
    {
     if (o130)
      o131++;
     return(o131);
    }
 }
 int 
func5 (void)
 {
    int  o130=1;
    int  o131=0;
    {
     switch (o130)
      case 1 :
           o131++;
     return(o131);
    }
 }
 int 
func6 (void)
 {
    int  o130=0;
    {
     while (o130<4)
     o130++;
     return(o130);
    }
 }
 int 
func7 (void)
 {
    int  o130=0;
    {
     do
     o130++;
     while (o130<4);
     return(o130);
    }
 }
 int 
func8 (void)
 {
    int  o130=0;
    int  idxo=0;
    {
     for (idxo=1;  o130<4;  idxo++)
     o130++;
     return(o130);
    }
 }
 int 
func9 (void)
 {
    {

     return(9);
    }
 }
 int 
func10 (void)
 {
    int  o130=1;
    int  o131=0;
    switch (o130)
    {
     case 1 :
          o131++;
     return(o131);
    }
 }
 int 
func11 (void)
 {
    int  o130=1;
    int  o131=0;
    switch (o130)
    {
     default :
          o131++;
     return(o131);
    }
 }
 int 
func12 (void)
 {
    int  o130=0;
    {
 o13pp :
     o130++;
     return(o130);
    }
 }
