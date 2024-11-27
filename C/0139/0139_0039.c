#include <stdlib.h>
#include<stdio.h>
#include <string.h>
#include <math.h>
int strct (char *s, char *t);
int m3eva295 (void);
int scrna07 (void);
int mptest09 (void);
int m3eva332 (void);
int scrpz05 (void);
int m3gari03 (void);
int m3mpcm03 (void);
int scrlp37 (void);
int m3gcns16 (void);
int scrlp38 (void);
int m3eva245 (void);
  
 
 
 
 
 
 

int main (void)
{

   printf("*** \n\n");

   m3eva245();   
   scrlp38();    
   m3gcns16();   
   scrlp37();    
   m3mpcm03();   
   m3gari03();   
   scrpz05();    
   m3eva332();   
   mptest09();   
   scrna07();    
   m3eva295();   

   printf("\n*** \n");

exit (0);
}








 
 
 


int f1f (void)
{
  {
    static int f1a;
    f1a=10;
    if( f1a==10 )
        return 1;
      else
        return 0;
  }
}

extern int f1a;

int m3eva245 (void)
{
  if( f1a==0 && f1f() )
      printf("M3EVA245 TEST OK \n");
    else
      printf("M3EVA245 TEST NG = %d \n",f1a);
  return 0;
}
int f1a=0;

 
 
 


int m3eva295 (void)
{
  {
    int ffnc( int a );
    int a;
    a=20;
    if( a==20 && ffnc(10) )
        printf("M3EVA295 TEST OK \n");
      else
        printf("M3EVA295 TEST NG = %d \n",a);
  }
  return 0;
}

int ffnc( int a )
{
  if ( a == 10 )
      return 1;
    else
      return 0;
}

 
 
 


int f2f (register int f2a)
{
  if( f2a == 10 )
      return 1;
    else
      return 0;
}

extern int f2a=20;

int m3eva332 (void)
{
  if( f2a==20 && f2f(10) )
      printf("M3EVA332 TEST OK \n");
    else
      printf("M3EVA332 TEST NG = %d \n",f2a);
  return 0;
}

 
 
 



static  signed   int  xa=-10;
static  signed   char xb=-20;

union  fxtg1 {
  signed    int    *      i01[2];
  signed    char   *      c01[2];
   };

union  fxtg2 {
  union     fxtg1         st02[2];
  signed    int    *      i02[2];
   };

union  fxtg3 {
         int           i01[2];
         char          c01[2];
   };

union  fxtg4 {
         union  fxtg3  st02[2];
         int           i02[2];
   };


int m3gari03 (void)
{

 union  fxtg2 st91[2]= {
   &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa, };

 union  fxtg2 st92[2]= {
 {  { { { &xa , &xa } } , { { &xa, &xa } } } },
 {{{ &xa,&xa } , {{ &xa }}}},
 };

 union  fxtg2 st93[ ]= {  
   &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa, };

 union  fxtg2 st94[ ]= {  
 {  { { { &xa , &xa } } , { { &xa, &xa } } } },
 {{{ &xa,&xa } , {{ &xa }}}},
 };
 

 union  fxtg4 volatile const st95[2]= {
   1,2,3,4,5,6,7,8 } ;

 union  fxtg4 volatile const st96[2]= {
 {  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  1, 2 } , {{  3 }}}},
 };

 union  fxtg4 volatile const st97[ ]= {  
   1,2,3,4,5,6,7,8  };

 union  fxtg4 volatile const st98[ ]= {  
 {  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  1, 2 } , {{  3 }}}},
 };

 

 union  fxtg4 st99[2]= {
   1,2,3,4,5,6,7,8 } ;

 union  fxtg4 st100[2]= {
 {  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  1, 2 } , {{  3 }}}},
 };

 union  fxtg4 st101[ ]= {  
   1,2,3,4,5,6,7,8 } ;

 union  fxtg4 st102[ ]= {  
 {  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  1, 2 } , {{  3 }}}},
 };

 

 union  fxtg2 st103[1][1][1][1][2]= {
   &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa  };

 union  fxtg2 st104[1][1][1][1][2]= {
 {{{{{  { { { &xa , &xa } } , { { &xa, &xa } } }  },
 {{{ &xa,&xa } , {{ &xa }}}}}}}},
 };

 union  fxtg2 st105[1][1][1][1][2]= {
 {{{{ &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa  }}}}
 };

 union  fxtg2 st106[ ][1][1][1][2]= {  
   &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa  };

 union  fxtg2 st107[ ][1][1][1][2]= {  
 {{{{{  { { { &xa , &xa } } , { { &xa, &xa } } }  },
 {{{ &xa,&xa } , {{ &xa }}}}}}}},
 };

 union  fxtg2 st108[ ][1][1][1][2]= {  
 {{{{ &xa,&xa,&xa,&xa,&xa,&xa,&xa,&xa  }}}}
 };

 

 union  fxtg4 volatile const st109[1][1][1][1][2]= {
   1,2,3,4,5,6,7,8  };

 union  fxtg4 volatile const st110[1][1][1][1][2]= {
 {{{{{  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  5, 6 } , {{  7 }}}}}}}},
 };

 union  fxtg4 volatile const st111[1][1][1][1][2]= {
 {{{{ 1,2,3,4,5,6,7,8  }}}}
 };

 union fxtg4 volatile const st112[ ][1][1][1][2]= {  
   1,2,3,4,5,6,7,8  };

 union fxtg4 volatile const st113[ ][1][1][1][2]= {  
 {{{{{  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  5, 6 } , {{  7 }}}}}}}},
 };

 union fxtg4 volatile const st114[ ][1][1][1][2]= {  
 {{{{ 1,2,3,4,5,6,7,8  }}}}
 };

 

 union  fxtg4 st115[1][1][1][1][2]= {
   1,2,3,4,5,6,7,8  };

 union  fxtg4 st116[1][1][1][1][2]= {
 {{{{{  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  5, 6 } , {{  7 }}}}}}}},
 };

 union  fxtg4 st117[1][1][1][1][2]= {
 {{{{ 1,2,3,4,5,6,7,8  }}}}
 };

 union  fxtg4 st118[ ][1][1][1][2]= {  
   1,2,3,4,5,6,7,8  };

 union  fxtg4 st119[ ][1][1][1][2]= {  
 {{{{{  { { {  1 ,  2 } } , { {  3,  4 } } }  },
 {{{  5, 6 } , {{  7 }}}}}}}},
 };

 union  fxtg4 st120[ ][1][1][1][2]= {  
 {{{{ 1,2,3,4,5,6,7,8  }}}}
 };

 

   printf("*** M3GARI03 ** MK3 TEST ** STARTED ***\n");

   if((*(st91[0].st02[0].i01[0])== -10) &&
      (*(st91[0].st02[0].i01[1])== -10) &&
      (*(st91[0].st02[1].i01[0])== -10) &&
      (*(st91[0].st02[1].i01[1])== -10) &&
      (*(st91[1].st02[0].i01[0])== -10) &&
      (*(st91[1].st02[0].i01[1])== -10) &&
      (*(st91[1].st02[1].i01[0])== -10) &&
      (*(st91[1].st02[1].i01[1])== -10))
   printf("*** M3GARI03 - 01 ** OK ***\n");
   else
   printf("*** M3GARI03 - 01 ** NG ****\n");

   if((*(st92[0].st02[0].i01[0])== -10) &&
      (*(st92[0].st02[0].i01[1])== -10) &&
      (*(st92[0].st02[1].i01[0])== -10) &&
      (*(st92[0].st02[1].i01[1])== -10) &&
      (*(st92[1].st02[0].i01[0])== -10) &&
      (*(st92[1].st02[0].i01[1])== -10) &&
      (*(st92[1].st02[1].i01[0])== -10))
   printf("*** M3GARI03 - 02 ** OK ***\n");
   else
   printf("*** M3GARI03 - 02 ** NG ****\n");

   if((*(st93[0].st02[0].i01[0])== -10) &&
      (*(st93[0].st02[0].i01[1])== -10) &&
      (*(st93[0].st02[1].i01[0])== -10) &&
      (*(st93[0].st02[1].i01[1])== -10) &&
      (*(st93[1].st02[0].i01[0])== -10) &&
      (*(st93[1].st02[0].i01[1])== -10) &&
      (*(st93[1].st02[1].i01[0])== -10) &&
      (*(st93[1].st02[1].i01[1])== -10))
   printf("*** M3GARI03 - 03 ** OK ***\n");
   else
   printf("*** M3GARI03 - 03 ** NG ****\n");

   if((*(st94[0].st02[0].i01[0])== -10) &&
      (*(st94[0].st02[0].i01[1])== -10) &&
      (*(st94[0].st02[1].i01[0])== -10) &&
      (*(st94[0].st02[1].i01[1])== -10) &&
      (*(st94[1].st02[0].i01[0])== -10) &&
      (*(st94[1].st02[0].i01[1])== -10) &&
      (*(st94[1].st02[1].i01[0])== -10))
   printf("*** M3GARI03 - 04 ** OK ***\n");
   else
   printf("*** M3GARI03 - 04 ** NG ****\n");

   if(( (st95[0].st02[0].i01[0])==  1 ) &&
      ( (st95[0].st02[0].i01[1])==  2 ) &&
      ( (st95[0].st02[1].i01[0])==  3 ) &&
      ( (st95[0].st02[1].i01[1])==  4 ) &&
      ( (st95[1].st02[0].i01[0])==  5 ) &&
      ( (st95[1].st02[0].i01[1])==  6 ) &&
      ( (st95[1].st02[1].i01[0])==  7 ) &&
      ( (st95[1].st02[1].i01[1])==  8 ))
   printf("*** M3GARI03 - 05 ** OK ***\n");
   else
   printf("*** M3GARI03 - 05 ** NG ****\n");

   if(( (st96[0].st02[0].i01[0])==  1 ) &&
      ( (st96[0].st02[0].i01[1])==  2 ) &&
      ( (st96[0].st02[1].i01[0])==  3 ) &&
      ( (st96[0].st02[1].i01[1])==  4 ) &&
      ( (st96[1].st02[0].i01[0])==  1 ) &&
      ( (st96[1].st02[0].i01[1])==  2 ) &&
      ( (st96[1].st02[1].i01[0])==  3 ) )
   printf("*** M3GARI03 - 06 ** OK ***\n");
   else
   printf("*** M3GARI03 - 06 ** NG ****\n");

   if(( (st97[0].st02[0].i01[0])==  1 ) &&
      ( (st97[0].st02[0].i01[1])==  2 ) &&
      ( (st97[0].st02[1].i01[0])==  3 ) &&
      ( (st97[0].st02[1].i01[1])==  4 ) &&
      ( (st97[1].st02[0].i01[0])==  5 ) &&
      ( (st97[1].st02[0].i01[1])==  6 ) &&
      ( (st97[1].st02[1].i01[0])==  7 ) &&
      ( (st97[1].st02[1].i01[1])==  8 ))
   printf("*** M3GARI03 - 07 ** OK ***\n");
   else
   printf("*** M3GARI03 - 07 ** NG ****\n");

   if(( (st98[0].st02[0].i01[0])==  1 ) &&
      ( (st98[0].st02[0].i01[1])==  2 ) &&
      ( (st98[0].st02[1].i01[0])==  3 ) &&
      ( (st98[0].st02[1].i01[1])==  4 ) &&
      ( (st98[1].st02[0].i01[0])==  1 ) &&
      ( (st98[1].st02[0].i01[1])==  2 ) &&
      ( (st98[1].st02[1].i01[0])==  3 ) )
   printf("*** M3GARI03 - 08 ** OK ***\n");
   else
   printf("*** M3GARI03 - 08 ** NG ****\n");

   if(( (st99[0].st02[0].i01[0])==  1 ) &&
      ( (st99[0].st02[0].i01[1])==  2 ) &&
      ( (st99[0].st02[1].i01[0])==  3 ) &&
      ( (st99[0].st02[1].i01[1])==  4 ) &&
      ( (st99[1].st02[0].i01[0])==  5 ) &&
      ( (st99[1].st02[0].i01[1])==  6 ) &&
      ( (st99[1].st02[1].i01[0])==  7 ) &&
      ( (st99[1].st02[1].i01[1])==  8 ))
   printf("*** M3GARI03 - 09 ** OK ***\n");
   else
   printf("*** M3GARI03 - 09 ** NG ****\n");

   if(( (st100[0].st02[0].i01[0])== 1 ) &&
      ( (st100[0].st02[0].i01[1])== 2 ) &&
      ( (st100[0].st02[1].i01[0])== 3 ) &&
      ( (st100[0].st02[1].i01[1])== 4 ) &&
      ( (st100[1].st02[0].i01[0])== 1 ) &&
      ( (st100[1].st02[0].i01[1])== 2 ) &&
      ( (st100[1].st02[1].i01[0])== 3 ) )
   printf("*** M3GARI03 - 10 ** OK ***\n");
   else
   printf("*** M3GARI03 - 10 ** NG ****\n");

   if(( (st101[0].st02[0].i01[0])== 1 ) &&
      ( (st101[0].st02[0].i01[1])== 2 ) &&
      ( (st101[0].st02[1].i01[0])== 3 ) &&
      ( (st101[0].st02[1].i01[1])== 4 ) &&
      ( (st101[1].st02[0].i01[0])== 5 ) &&
      ( (st101[1].st02[0].i01[1])== 6 ) &&
      ( (st101[1].st02[1].i01[0])== 7 ) &&
      ( (st101[1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 11 ** OK ***\n");
   else
   printf("*** M3GARI03 - 11 ** NG ****\n");

   if(( (st102[0].st02[0].i01[0])== 1 ) &&
      ( (st102[0].st02[0].i01[1])== 2 ) &&
      ( (st102[0].st02[1].i01[0])== 3 ) &&
      ( (st102[0].st02[1].i01[1])== 4 ) &&
      ( (st102[1].st02[0].i01[0])== 1 ) &&
      ( (st102[1].st02[0].i01[1])== 2 ) &&
      ( (st102[1].st02[1].i01[0])== 3 ) )
   printf("*** M3GARI03 - 12 ** OK ***\n");
   else
   printf("*** M3GARI03 - 12 ** NG ****\n");

   if((*(st103[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st103[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st103[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st103[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st103[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st103[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st103[0][0][0][0][1].st02[1].i01[0])==-10) &&
      (*(st103[0][0][0][0][1].st02[1].i01[1])==-10))
   printf("*** M3GARI03 - 13 ** OK ***\n");
   else
   printf("*** M3GARI03 - 13 ** NG ****\n");

   if((*(st104[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st104[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st104[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st104[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st104[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st104[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st104[0][0][0][0][1].st02[1].i01[0])==-10) )
   printf("*** M3GARI03 - 14 ** OK ***\n");
   else
   printf("*** M3GARI03 - 14 ** NG ****\n");

   if((*(st105[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st105[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st105[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st105[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st105[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st105[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st105[0][0][0][0][1].st02[1].i01[0])==-10) &&
      (*(st105[0][0][0][0][1].st02[1].i01[1])==-10))
   printf("*** M3GARI03 - 15 ** OK ***\n");
   else
   printf("*** M3GARI03 - 15 ** NG ****\n");

   if((*(st106[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st106[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st106[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st106[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st106[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st106[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st106[0][0][0][0][1].st02[1].i01[0])==-10) &&
      (*(st106[0][0][0][0][1].st02[1].i01[1])==-10))
   printf("*** M3GARI03 - 16 ** OK ***\n");
   else
   printf("*** M3GARI03 - 16 ** NG ****\n");

   if((*(st107[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st107[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st107[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st107[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st107[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st107[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st107[0][0][0][0][1].st02[1].i01[0])==-10) )
   printf("*** M3GARI03 - 17 ** OK ***\n");
   else
   printf("*** M3GARI03 - 17 ** NG ****\n");

   if((*(st108[0][0][0][0][0].st02[0].i01[0])==-10) &&
      (*(st108[0][0][0][0][0].st02[0].i01[1])==-10) &&
      (*(st108[0][0][0][0][0].st02[1].i01[0])==-10) &&
      (*(st108[0][0][0][0][0].st02[1].i01[1])==-10) &&
      (*(st108[0][0][0][0][1].st02[0].i01[0])==-10) &&
      (*(st108[0][0][0][0][1].st02[0].i01[1])==-10) &&
      (*(st108[0][0][0][0][1].st02[1].i01[0])==-10) &&
      (*(st108[0][0][0][0][1].st02[1].i01[1])==-10))
   printf("*** M3GARI03 - 18 ** OK ***\n");
   else
   printf("*** M3GARI03 - 18 ** NG ****\n");


   if(( (st109[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st109[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st109[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st109[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st109[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st109[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st109[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st109[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 19 ** OK ***\n");
   else
   printf("*** M3GARI03 - 19 ** NG ****\n");

   if(( (st110[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st110[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st110[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st110[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st110[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st110[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st110[0][0][0][0][1].st02[1].i01[0])== 7 ) )
   printf("*** M3GARI03 - 20 ** OK ***\n");
   else
   printf("*** M3GARI03 - 20 ** NG ****\n");

   if(( (st111[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st111[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st111[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st111[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st111[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st111[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st111[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st111[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 21 ** OK ***\n");
   else
   printf("*** M3GARI03 - 21 ** NG ****\n");

   if(( (st112[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st112[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st112[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st112[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st112[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st112[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st112[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st112[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 22 ** OK ***\n");
   else
   printf("*** M3GARI03 - 22 ** NG ****\n");

   if(( (st113[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st113[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st113[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st113[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st113[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st113[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st113[0][0][0][0][1].st02[1].i01[0])== 7 ) )
   printf("*** M3GARI03 - 23 ** OK ***\n");
   else
   printf("*** M3GARI03 - 23 ** NG ****\n");

   if(( (st114[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st114[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st114[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st114[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st114[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st114[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st114[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st114[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 24 ** OK ***\n");
   else
   printf("*** M3GARI03 - 24 ** NG ****\n");

   if(( (st115[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st115[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st115[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st115[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st115[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st115[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st115[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st115[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 25 ** OK ***\n");
   else
   printf("*** M3GARI03 - 25 ** NG ****\n");

   if(( (st116[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st116[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st116[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st116[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st116[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st116[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st116[0][0][0][0][1].st02[1].i01[0])== 7 ) )
   printf("*** M3GARI03 - 26 ** OK ***\n");
   else
   printf("*** M3GARI03 - 26 ** NG ****\n");

   if(( (st117[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st117[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st117[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st117[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st117[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st117[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st117[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st117[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 27 ** OK ***\n");
   else
   printf("*** M3GARI03 - 27 ** NG ****\n");

   if(( (st118[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st118[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st118[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st118[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st118[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st118[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st118[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st118[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 28 ** OK ***\n");
   else
   printf("*** M3GARI03 - 28 ** NG ****\n");

   if(( (st119[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st119[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st119[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st119[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st119[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st119[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st119[0][0][0][0][1].st02[1].i01[0])== 7 ) )
   printf("*** M3GARI03 - 29 ** OK ***\n");
   else
   printf("*** M3GARI03 - 29 ** NG ****\n");

   if(( (st120[0][0][0][0][0].st02[0].i01[0])== 1 ) &&
      ( (st120[0][0][0][0][0].st02[0].i01[1])== 2 ) &&
      ( (st120[0][0][0][0][0].st02[1].i01[0])== 3 ) &&
      ( (st120[0][0][0][0][0].st02[1].i01[1])== 4 ) &&
      ( (st120[0][0][0][0][1].st02[0].i01[0])== 5 ) &&
      ( (st120[0][0][0][0][1].st02[0].i01[1])== 6 ) &&
      ( (st120[0][0][0][0][1].st02[1].i01[0])== 7 ) &&
      ( (st120[0][0][0][0][1].st02[1].i01[1])== 8 ))
   printf("*** M3GARI03 - 30 ** OK ***\n");
   else
   printf("*** M3GARI03 - 30 ** NG ****\n");

   printf("******* M3GARI03 TEST ENDED *******\n");
   return 0;
}

 
 
 


int m3gcns16 (void)
{
  int                int_;
  unsigned int       uns_int;
  unsigned long int  uns_lon;

  printf("M3GCNS16 START\n");

 
 

  int_ = (int)100 + (unsigned char)100;
  if (int_ == 200)
    printf("--- M3GCNS16 (50-01) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-01) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  uns_int = (int)100 - (unsigned int)50;
  if (uns_int == 50)
    printf("--- M3GCNS16 (50-02) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-02) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

 
 

  int_ = (int)100 * (unsigned short int)100;
  if (int_ == 10000)
    printf("--- M3GCNS16 (50-03) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-03) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  uns_lon = (int)100 / (unsigned long int)50;
  if (uns_lon == 2)
    printf("--- M3GCNS16 (50-04) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-04) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }

 
 

  int_ = (int)100 % (char)3;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-05) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-05) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)1 << (short int)3;
  if (int_ == 8)
    printf("--- M3GCNS16 (50-06) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-06) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)8 >> (long int)3;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-07) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-07) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 < (float)101.0;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-08) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 > (double)50.0;
  if (int_ == 0)
    printf("--- M3GCNS16 (50-09) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 <= (long double)100.0;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-10) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 >= (float)50.0;
  if (int_ == 0)
    printf("--- M3GCNS16 (50-11) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 == (double)100.0;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-12) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)1 != (long double)1.0;
  if (int_ == 0)
    printf("--- M3GCNS16 (50-13) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)10 & (unsigned char)7;
  if (int_ == 2)
    printf("--- M3GCNS16 (50-14) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-14) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  uns_int = (int)1 ^ (unsigned int)2;
  if (uns_int == 3)
    printf("--- M3GCNS16 (50-15) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-15) NG ***\n");
    printf("UNS_INT = %x\n" , uns_int);
  }

 
 

  int_ = (int)10 | (unsigned short int)7;
  if (int_ == 15)
    printf("--- M3GCNS16 (50-16) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-16) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- M3GCNS16 (50-17) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 
 

  int_ = (int)0 || (char)100;
  if (int_ == 1)
    printf("--- M3GCNS16 (50-18) OK ---\n");
  else {
    printf("*** M3GCNS16 (50-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }

 

  printf("M3GCNS16 END  \n");
  return 0;
}

 
 
 



 struct ss {
    int   ss_i1;
    int   ss_i2;
    char  ss_c;
    struct ss *next;
 };
 int schk(struct ss *);
 int defi1(struct ss *);
 int sortss(struct ss *);
 int defn(struct ss *);
 int defc(struct ss *);
 int defi2(struct ss *,int);

int mptest09 (void)
 {
     int m_i;
     static struct ss ss_m[26],*m_ssp;
     static char *msgok = "OK",
                 *msgng = "NG";
            char *msg;

     printf("\n***** MPTEST09 START *****\n");
     for(m_i=0 ; m_i<26 ; m_i++){
       defi1(&ss_m[m_i]);
     }

     for(m_i=0 ; defi2(ss_m,m_i++) ; ) ;
     while(defc(ss_m)) ;
     while(defn(ss_m)) ;

     for(m_i=0;m_i<26;m_i++){
        m_ssp=&ss_m[m_i];     }

     msg = sortss(ss_m) ? msgok : msgng ;
     printf("   ** SORTSS RETURN %s **\n",msg);
     goto label3;
 label4:
     msg = schk(ss_m) ? msgok : msgng ;
     printf("   ** SCHK   RETURN %s **\n",msg);
     goto label5;
 label1:
     printf("***** MPTEST09 NG NG NG *****\n\n");
     goto label0;
 label2:
     printf("***** MPTEST09 OK OK OK *****\n");
     goto label0;
 label3:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label4;
       default:
         goto label1;
     }
 label5:
     switch(strcmp(msg,"OK")){
       case 0 :
         goto label2;
       default:
         goto label1;
     }
 label0:
     printf("***** MPTEST09 END END *****\n");
     return 0;
 }

 int defi1 (struct ss *ssp)
 {
     static int d1_i=1;

     ssp->ss_i1 = d1_i++ ;
     return(0);
 }

 int defi2 (struct ss *ssp, int ei)
 {
      struct ss *d_sp;
      static int  i=0,
                  num[ ] ={20,13, 1, 7,23, 6, 2, 5,22, 3,
                              4 ,15, 8,21,24,14,17, 9,
                              26,11,19,16,18,25,10,12};

      d_sp=ssp+ei;
      d_sp->ss_i2=num[i++];
      return(i<26);
 }

 int defc (struct ss *ssp)
 {
     int i=0;
     char c='A';

     for( ;i<26 ;i++){
       ssp->ss_c = c;
       c++;
       switch(c){
         case 0x8a :
           c=0xd1;
           break;
         case 0x9a :
           c=0xe2;
       }
       ssp++;
     }
     return(0);
 }

 int defn (struct ss *ssp)
 {
    int i;
    struct ss *np;

    for( np=ssp,i=0 ; i<26 ; np=np->next,i++){
       np->next=np+1;
    }
    (np-1)->next = NULL;
    return(0);
 }

 int sortss (struct ss *ssp)
 {
    struct ss ws,*wssp;
    int i,j,n;
    if(ssp == NULL) return(0);
    wssp=ssp;
    for(n=25,i=0;i<25;i++,n--){
      for(j=0;j<n;j++){
        if(ssp->ss_i2 > (ssp+1)->ss_i2){
          memcpy(&ws,(ssp+1),sizeof(struct ss));
          memcpy((ssp+1),ssp,sizeof(struct ss));
          memcpy(ssp,&ws,sizeof(struct ss));
        }
        ssp++;
      }
      ssp=wssp;
    }
    defn(wssp);
    return(1);  
 }

 int schk (struct ss *ssp)
 {
   struct ss *wssp;
   int i;

    if(ssp == NULL) return(0);
    for(i=0,wssp=ssp;ssp->next != NULL ; ssp=ssp->next,i++){
       if(ssp->ss_i2 < (ssp+1)->ss_i2)
          continue;
       else
          return(0);  
    }
    return(1);  
 }


 
 
 


 int   mpouti1,mpouti2;
 int m3mpcm03 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
    
   pi=&ai;
   fi=*pi;
   if(bi==20) {
    *pi=15;
   }
   ei=*pi;
   if(ei==fi)
   {
     printf("ERROR OF A-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("ERROR OF A-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF A-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=ai+bi;
   if(bi==20) {
     *pi=15;
   }
   ei=ai+bi;
   if(ei==fi)
   {
     printf("ERROR OF C-2 : EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF C-2 : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF C-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=bi+(*pi);
   if(bi==20) {
     ai=15;
   }
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("ERROR OF B-2:EI = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("ERROR OF B-2:EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-2\n");
     }
   }
   ai=10;
   return 0;
 }




 
 
 


  

int global;
void sub0 (void){ global=0; }
void sub1 (void){ global=global+1; }
void sub2 (void){ global=global+2; }
void sub3 (void){ global=global+3; }
void sub4 (void){ global=global+4; }
void sub5 (void){ global=global+5; }
void sub6 (void){ global=global+6; }
void sub7 (void){ global=global+7; }
void sub8 (void){ global=global+8; }
void sub9 (void){ global=global+9; }
void sub10 (void){ global=global+10; }
void sub11 (void){ global=global+11; }
void sub12 (void){ global=global+12; }
void sub13 (void){ global=global+13; }
void sub14 (void){ global=global+14; }
void sub15 (void){ global=global+15; }
void sub16 (void){ global=global+16; }
void sub17 (void){ global=global+17; }
void sub18 (void){ global=global+18; }
void sub19 (void){ global=global+19; }
void sub20 (void){ global=global+20; }

void (*jump[])() = {
  sub0,sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,sub9,sub10,
  sub11,sub12,sub13,sub14,sub15,sub16,sub17,sub18,sub19,sub20
};

int scrlp37 (void)
{
     int i;
     for(i=0;i<20;i++) {
       (*jump[i])();
     }
     if( global == 190 ) puts(" OK ");
     else                puts(" NG ");
 
     return 0;
}


 
 
 


static char result[12]="mynameistom";
int scrna07 (void)
{
     char buf[12];
     char dumy[12];

     strcpy(buf,"myname");
     strcpy(dumy,"istom");
     strct(buf,dumy);
     if(strcmp(buf,result) == 0)
           printf(" TEST ==> OK\n");
     else
           printf(" test ==> ng\n");
     return 0;
}
int strct (char *s, char *t)
{
     while(*s != '\0')
           *s++;
     while((*s++ = *t++) != '\0')
               ;
     return 0;
}


 
 
 


  
 
#ifdef v10
#define print(int) printf("int = %d\n",int)

int scrpz05 (void)
{
      int x=1,y=1,z=1;

      x += y += z;
      print( x < y ? y : x );

      print( x < y ? x ++ : y ++ );
      print(x); print(y);

      print( z += x < y ? x ++ : y ++ );
      print(y); print(z);

      x=3; y=z=4;
      print( ( z >= y >= x) ? 1 : 0);
      print( z >= y && y >= x);
}
#else
#define print(int,y) if( (int) != y ) puts(" NG ");

int scrpz05 (void)
{
      int x=1,y=1,z=1;

      x += y += z;
      print( x < y ? y : x ,3);

      print( x < y ? x ++ : y ++ ,2);
      print(x,3); print(y,3);

      print( z += x < y ? x ++ : y ++ ,4);
      print(y,4); print(z,4);

      x=3; y=z=4;
      print( ( z >= y >= x) ? 1 : 0,0);
      print( z >= y && y >= x,1);
      puts(" SCRPZ05 PASS ");
      return 0;
}
#endif


 
 
 


  

struct tag {
     char bgchr[4096];
     int  i;
     int  j;
} bgstrct;

int glbal = 1;

int scrlp38 (void)
{
     struct tag *p;
     p=&bgstrct;
     p->j = glbal;
     for((p->i)=0;(p->i)<4096;(p->i)++) {
       p->bgchr[p->i]    =  p->j;
     }
     for((p->i)=0;(p->i)<4096;(p->i)++) {
       p->j = p->j + p->bgchr[p->i];
     }
     printf("%d \n",p->j);
     if( p->j == 4097 ) puts(" OK ");
     else               puts(" NG ");
     return 0;
}

