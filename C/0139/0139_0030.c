#include <stdlib.h>
#include <string.h>
 
 
 
 
 
 
 


#include <stdio.h>
#include <math.h>
int testa(register char *dim);
int test9(register char *dim);
int test8(char dim[]);
int test7(char dim[]);
int test6(char dim[]);
int test5(char dim[]);
int test4(char dim[]);
int test3(char dim[]);
int test2(char dim[]);
int test1(char dim[]);
int test0(char dim[]);
int func();
int scrlp12();
int scrlp11();
int mptest02();
int mptest01();
int m3gari01();
int m3garg01();
int m3eva206();
int main()  {

  m3eva206();    
  m3garg01();    
  m3gari01();    
  mptest01();    
  mptest02();    
  scrlp11();     
  scrlp12();     

exit (0);
}

 
 
 

int func1()
{
  {
    static int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

static int a;

int m3eva206()
{
  if( a==0 && func1() )
      printf("M3EVA206 TEST OK \n");
    else
      printf("M3EVA206 TEST NG = %d \n",a);
  return 0;
}

 
 
 

int  f1();
int  f2(int);
int  f3(int,float);
int  f4(void);
int m3garg01()
{
  int x=0;
  int a=1;
  float f=1.0;
  printf("M3GARG01 START\n");
  x+=f1(a,f);     
  x+=f2(a);       
  x+=f3(a,f);     
  x+=f4();        
  if (x==6)
    printf("M3GARG01 FUNC1 OK\n");
  else {
    printf("M3GARG01 FUNC1 NG\n");
    printf("X=%d\n",x);
  }
  printf("M3GARG01 END  \n");
  return 0;
}
 
int f1(int a,double f){
  return a+(int)f;
}
 
int f2(int a) {
  return a;
}
 
int f3(int a,float f)
{
  return a+(int)f;
}
 
int f4(void){
  return 1;
}

 
 
 

int m3gari01()
{
 static char *         c01[1+1] = { "abc","def"  } ;
 static char *         c02[1+1] = {{"efg"}} ;
 static char *         c03[   ] = { "hij","klm"  } ;
 static char *         c04[   ] = {{"opq"}} ;


 char     **           c05[1+sizeof(short int)] =
                           { c01      , c01+1    };
 char     **           c06[1+sizeof(int)] =  {{ c01      }};
 char     **           c07[             ] =
                           { c01      , c01+1    , c01+2    };
 char     **           c08[             ] =  {{ c01      }};


 char  volatile const  c09[1+3]            =  "abc" ;
 char  volatile const  c10[5            ]  ={"def"} ;
 char  volatile const  c12[   ]            =  "ghi" ;
 char  volatile const  c13[             ]  ={"jkl"} ;


 char                  c15[1+3]            =  "abc" ;
 char                  c16[5            ]  ={"def"} ;
 char                  c18[   ]            =  "ghi" ;
 char                  c19[             ]  ={"jkl"} ;


  char const volatile c21[sizeof(int)-sizeof(char)] =         
   { 1+2+3+4-sizeof(int)-sizeof(char),sizeof(short)*2,10-2-3-2 } ;
        
  char const volatile c22[sizeof(int)-sizeof(char)] =         
  {{ 1+2+3+4-sizeof(int)-sizeof(char) }} ;
          
  char const volatile c23[          ] =
   { 1+2+3+4-sizeof(int)-sizeof(char),sizeof(short)*2,10-2-3-2 } ;
        
  char const volatile c24[          ] =
  {{ 1+2+3+4-sizeof(int)-sizeof(char) }} ;
          


  char               c25[sizeof(int)-sizeof(char)] =   
   { 1+2+3+4-sizeof(int)-sizeof(char),sizeof(short)*2,10-2-3-2 } ;
        
  char               c26[sizeof(int)-sizeof(char)] =   
  {{ 1+2+3+4-sizeof(int)-sizeof(char) }} ;
          
  char               c27[    ] =
   { 1+2+3+4-sizeof(int)-sizeof(char),sizeof(short)*2,10-2-3-2 } ;
        
  char               c28[    ] =
  {{ 1+2+3+4-sizeof(int)-sizeof(char) }} ;
          


 char *       c29[2][1][1][1][3] =
        { "abc","def","ghi","jkl","mno","pqr" } ;
 char *       c30[2][1][1][1][3] =
        {{{"abc"}},{{"jkl"}}} ;
char  *   c31[2][1][1][1][3] =
        { {"abc","def","ghi"},{"jkl","mno","pqr"} } ;


  
 char     *        c32[   ][1][1][1][3] =     
        { "abc","def","ghi","jkl","mno","pqr" } ;
 char     *        c33[   ][1][1][1][3] =     
        {{{"abc"}},{{"jkl"}}} ;
 char     *        c34[  ][1][1][1][3] =      
        { {"abc","def","ghi"},{"jkl","mno","pqr"} } ;


 char **      c35[2][1][1][1][3] =
    {c01     ,c01+1   ,c02     ,c03     ,c03+1  ,c04      };
 char **      c36[2][1][1][1][3] =
            {{{c01     }},{{c03     }}};
 char **      c37[2][1][1][1][3] =
 {{c01     ,c01+1   ,c02     },{c03     ,c03+1   ,c04     }};


  
 char    **   c38[   ][1][1][1][3] =     
    {c01     ,c01+1   ,c02     ,c03     ,c03+1  ,c04      };
 char    **   c39[   ][1][1][1][3] =     
            {{{c01     }},{{c03     }}};
 char    **   c40[  ][1][1][1][3] =      
 {{c01     ,c01+1   ,c02     },{c03     ,c03+1   ,c04     }};


 char const volatile  c42[2][3][1][1][3] =
   {"abc","def","ghi","jkl","mno","pqr" };
 char const volatile  c43[2][3][1][1][3] =
   {{{{{"abc"}}}},{{{{"jkl"}}}}};
 char const volatile  c44[2][3][1][1][3] =
   {{"abc","def","ghi"},{"jkl","mno","pqr"}};


 char const volatile  c46[ ][3][1][1][3] =   
   {"abc","def","ghi","jkl","mno","pqr" };
 char const volatile  c47[ ][3][1][1][3] =   
   {{{{{"abc"}}}},{{{{"jkl"}}}}};
 char const volatile  c477[ ][3][1][1][3] =   
   {{"abc","def","ghi"},{"jkl","mno","pqr"}};


 char                 c49[2][3][1][1][3] =
   {"abc","def","ghi","jkl","mno","pqr" };
 char                 c50[2][3][1][1][3] =
   {{{{{"abc"}}}},{{{{"jkl"}}}}};
 char                 c51[2][3][1][1][3] =
   {{"abc","def","ghi"},{"jkl","mno","pqr"}};


 char                 c53[ ][3][1][1][3] =   
   {"abc","def","ghi","jkl","mno","pqr" };
 char                 c54[ ][3][1][1][3] =   
   {{{{{"abc"}}}},{{{{"jkl"}}}}};
 char                 c55[ ][3][1][1][3] =   
   {{"abc","def","ghi"},{"jkl","mno","pqr"}};


 char volatile const  c56[2][1][1][1][3] =
   {1*sizeof(char),sizeof(int)/2,3,4,5,20%7};
 char volatile const  c57[2][1][1][1][3] =
   {{{{{{1}}}}},{{{{{4}}}}}};
 char volatile const  c58[2][1][1][1][3] =
   {{1,2,3},{4,5,6}};

 char volatile const  c59[ ][1][1][1][3] =   
   {1*sizeof(char),sizeof(int)/2,3,4,5,20%7};
 char volatile const  c60[ ][1][1][1][3] =   
   {{{{{{1}}}}},{{{{{4}}}}}};
 char volatile const  c61[ ][1][1][1][3] =   
   {{1,2,3},{4,5,6}};

 char                 c62[2][1][1][1][3] =
   {1*sizeof(char),sizeof(int)/2,3,4,5,20%7};
 char                 c63[2][1][1][1][3] =
   {{{{{{1}}}}},{{{{{4}}}}}};
 char                 c64[2][1][1][1][3] =
   {{1,2,3},{4,5,6}};

 char                 c65[ ][1][1][1][3] =   
   {1*sizeof(char),sizeof(int)/2,3,4,5,20%7};
 char                 c66[ ][1][1][1][3] =   
   {{{{{{1}}}}},{{{{{4}}}}}};
 char                 c67[ ][1][1][1][3] =   
   {{1,2,3},{4,5,6}};



   printf("*** M3GARI01 ** MK3 TEST ** STARTED ***\n");

   if((*c01[0]=='a') &&
      (*c01[1]=='d'))
   printf("*** M3GARI01 - 01 ** OK ***\n");
   else
   printf("*** M3GARI01 - 01 ** NG ****\n");

   if((*c02[0]=='e'))
   printf("*** M3GARI01 - 02 ** OK ***\n");
   else
   printf("*** M3GARI01 - 02 ** NG ****\n");

   if((*c03[0]=='h') &&
      (*c03[1]=='k'))
   printf("*** M3GARI01 - 03 ** OK ***\n");
   else
   printf("*** M3GARI01 - 03 ** NG ****\n");

   if((*c04[0]=='o'))
   printf("*** M3GARI01 - 04 ** OK ***\n");
   else
   printf("*** M3GARI01 - 04 ** NG ****\n");

   if((**c05[0]=='a') &&
      (**c05[1]=='d'))
   printf("*** M3GARI01 - 05 ** OK ***\n");
   else
   printf("*** M3GARI01 - 05 ** NG ****\n");

   if((**c06[0]=='a'))
   printf("*** M3GARI01 - 06 ** OK ***\n");
   else
   printf("*** M3GARI01 - 06 ** NG ****\n");

   if((**c07[0]=='a') &&
      (**c07[1]=='d'))
   printf("*** M3GARI01 - 07 ** OK ***\n");
   else
   printf("*** M3GARI01 - 07 ** NG ****\n");

   if((**c08[0]=='a'))
   printf("*** M3GARI01 - 08 ** OK ***\n");
   else
   printf("*** M3GARI01 - 08 ** NG ****\n");

   if((c09[0]=='a') &&
      (c09[1]=='b') &&
      (c09[2]=='c'))
   printf("*** M3GARI01 - 09 ** OK ***\n");
   else
   printf("*** M3GARI01 - 09 ** NG ****\n");

   if((c10[0]=='d') &&
      (c10[1]=='e') &&
      (c10[2]=='f'))
   printf("*** M3GARI01 - 10 ** OK ***\n");
   else
   printf("*** M3GARI01 - 10 ** NG ****\n");

   printf("*** M3GARI01 - 11 ** NOT RUN ***\n");

   if((c12[0]=='g') &&
      (c12[1]=='h') &&
      (c12[2]=='i'))
   printf("*** M3GARI01 - 12 ** OK ***\n");
   else
   printf("*** M3GARI01 - 12 ** NG ****\n");

   if((c13[0]=='j') &&
      (c13[1]=='k') &&
      (c13[2]=='l'))
   printf("*** M3GARI01 - 13 ** OK ***\n");
   else
   printf("*** M3GARI01 - 13 ** NG ****\n");

   printf("*** M3GARI01 - 14 ** NOT RUN ***\n");

   if((c15[0]=='a') &&
      (c15[1]=='b') &&
      (c15[2]=='c'))
   printf("*** M3GARI01 - 15 ** OK ***\n");
   else
   printf("*** M3GARI01 - 15 ** NG ****\n");

   if((c16[0]=='d') &&
      (c16[1]=='e') &&
      (c16[2]=='f'))
   printf("*** M3GARI01 - 16 ** OK ***\n");
   else
   printf("*** M3GARI01 - 16 ** NG ****\n");

   printf("*** M3GARI01 - 17 ** NOT RUN ***\n");

   if((c18[0]=='g') &&
      (c18[1]=='h') &&
      (c18[2]=='i'))
   printf("*** M3GARI01 - 18 ** OK ***\n");
   else
   printf("*** M3GARI01 - 18 ** NG ****\n");

   if((c19[0]=='j') &&
      (c19[1]=='k') &&
      (c19[2]=='l'))
   printf("*** M3GARI01 - 19 ** OK ***\n");
   else
   printf("*** M3GARI01 - 19 ** NG ****\n");

   printf("*** M3GARI01 - 20 ** NOT RUN ***\n");

   if((c21[0]== 5 ) &&
      (c21[1]== 4 ) &&
      (c21[2]== 3 ))
   printf("*** M3GARI01 - 21 ** OK ***\n");
   else
   printf("*** M3GARI01 - 21 ** NG ****\n");

   if((c22[0]== 5 ))
   printf("*** M3GARI01 - 22 ** OK ***\n");
   else
   printf("*** M3GARI01 - 22 ** NG ****\n");

   if((c23[0]== 5 ) &&
      (c23[1]== 4 ) &&
      (c23[2]== 3 ))
   printf("*** M3GARI01 - 21 ** OK ***\n");
   else
   printf("*** M3GARI01 - 21 ** NG ****\n");

   if((c24[0]== 5 ))
   printf("*** M3GARI01 - 24 ** OK ***\n");
   else
   printf("*** M3GARI01 - 24 ** NG ****\n");

   if((c25[0]== 5 ) &&
      (c25[1]== 4 ) &&
      (c25[2]== 3 ))
   printf("*** M3GARI01 - 25 ** OK ***\n");
   else
   printf("*** M3GARI01 - 25 ** NG ****\n");

   if((c26[0]== 5 ))
   printf("*** M3GARI01 - 26 ** OK ***\n");
   else
   printf("*** M3GARI01 - 26 ** NG ****\n");

   if((c27[0]== 5 ) &&
      (c27[1]== 4 ) &&
      (c27[2]== 3 ))
   printf("*** M3GARI01 - 27 ** OK ***\n");
   else
   printf("*** M3GARI01 - 27 ** NG ****\n");

   if((c28[0]== 5 ))
   printf("*** M3GARI01 - 28 ** OK ***\n");
   else
   printf("*** M3GARI01 - 28 ** NG ****\n");

   if((*c29[0][0][0][0][0]=='a') &&
      (*c29[0][0][0][0][1]=='d') &&
      (*c29[0][0][0][0][2]=='g') &&
      (*c29[1][0][0][0][0]=='j') &&
      (*c29[1][0][0][0][1]=='m') &&
      (*c29[1][0][0][0][2]=='p'))
   printf("*** M3GARI01 - 29 ** OK ***\n");
   else
   printf("*** M3GARI01 - 29 ** NG ****\n");

   if((*c30[0][0][0][0][0]=='a') &&
      (*c30[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 30 ** OK ***\n");
   else
   printf("*** M3GARI01 - 30 ** NG ****\n");

   if((*c31[0][0][0][0][0]=='a') &&
      (*c31[0][0][0][0][1]=='d') &&
      (*c31[0][0][0][0][2]=='g') &&
      (*c31[1][0][0][0][0]=='j') &&
      (*c31[1][0][0][0][1]=='m') &&
      (*c31[1][0][0][0][2]=='p'))
   printf("*** M3GARI01 - 31 ** OK ***\n");
   else
   printf("*** M3GARI01 - 31 ** NG ****\n");

   if((*c32[0][0][0][0][0]=='a') &&
      (*c32[0][0][0][0][1]=='d') &&
      (*c32[0][0][0][0][2]=='g') &&
      (*c32[1][0][0][0][0]=='j') &&
      (*c32[1][0][0][0][1]=='m') &&
      (*c32[1][0][0][0][2]=='p'))
   printf("*** M3GARI01 - 32 ** OK ***\n");
   else
   printf("*** M3GARI01 - 32 ** NG ****\n");

   if((*c33[0][0][0][0][0]=='a') &&
      (*c33[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 33 ** OK ***\n");
   else
   printf("*** M3GARI01 - 33 ** NG ****\n");

   if((*c34[0][0][0][0][0]=='a') &&
      (*c34[0][0][0][0][1]=='d') &&
      (*c34[0][0][0][0][2]=='g') &&
      (*c34[1][0][0][0][0]=='j') &&
      (*c34[1][0][0][0][1]=='m') &&
      (*c34[1][0][0][0][2]=='p'))
   printf("*** M3GARI01 - 34 ** OK ***\n");
   else
   printf("*** M3GARI01 - 34 ** NG ****\n");

   if((**c35[0][0][0][0][0]=='a') &&
      (**c35[0][0][0][0][1]=='d') &&
      (**c35[0][0][0][0][2]=='e') &&
      (**c35[1][0][0][0][0]=='h') &&
      (**c35[1][0][0][0][1]=='k') &&
      (**c35[1][0][0][0][2]=='o'))
   printf("*** M3GARI01 - 35 ** OK ***\n");
   else
   printf("*** M3GARI01 - 35 ** NG ****\n");

   if((**c36[0][0][0][0][0]=='a') &&
      (**c36[1][0][0][0][0]=='h'))
   printf("*** M3GARI01 - 36 ** OK ***\n");
   else
   printf("*** M3GARI01 - 36 ** NG ****\n");

   if((**c37[0][0][0][0][0]=='a') &&
      (**c37[0][0][0][0][1]=='d') &&
      (**c37[0][0][0][0][2]=='e') &&
      (**c37[1][0][0][0][0]=='h') &&
      (**c37[1][0][0][0][1]=='k') &&
      (**c37[1][0][0][0][2]=='o'))
   printf("*** M3GARI01 - 37 ** OK ***\n");
   else
   printf("*** M3GARI01 - 37 ** NG ****\n");

   if((**c38[0][0][0][0][0]=='a') &&
      (**c38[0][0][0][0][1]=='d') &&
      (**c38[0][0][0][0][2]=='e') &&
      (**c38[1][0][0][0][0]=='h') &&
      (**c38[1][0][0][0][1]=='k') &&
      (**c38[1][0][0][0][2]=='o'))
   printf("*** M3GARI01 - 38 ** OK ***\n");
   else
   printf("*** M3GARI01 - 38 ** NG ****\n");

   if((**c39[0][0][0][0][0]=='a') &&
      (**c39[1][0][0][0][0]=='h'))
   printf("*** M3GARI01 - 39 ** OK ***\n");
   else
   printf("*** M3GARI01 - 39 ** NG ****\n");

   if((**c40[0][0][0][0][0]=='a') &&
      (**c40[0][0][0][0][1]=='d') &&
      (**c40[0][0][0][0][2]=='e') &&
      (**c40[1][0][0][0][0]=='h') &&
      (**c40[1][0][0][0][1]=='k') &&
      (**c40[1][0][0][0][2]=='o'))
   printf("*** M3GARI01 - 40 ** OK ***\n");
   else
   printf("*** M3GARI01 - 40 ** NG ****\n");

   printf("*** M3GARI01 - 41 ** NOT RUN ***\n");

   if(( c42[0][0][0][0][0]=='a') &&
      ( c42[0][1][0][0][0]=='d') &&
      ( c42[0][2][0][0][0]=='g') &&
      ( c42[1][0][0][0][0]=='j') &&
      ( c42[1][1][0][0][0]=='m') &&
      ( c42[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 42 ** OK ***\n");
   else
   printf("*** M3GARI01 - 42 ** NG ****\n");

   if(( c43[0][0][0][0][0]=='a') &&
      ( c43[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 43 ** OK ***\n");
   else
   printf("*** M3GARI01 - 43 ** NG ****\n");

   if(( c44[0][0][0][0][0]=='a') &&
      ( c44[0][1][0][0][0]=='d') &&
      ( c44[0][2][0][0][0]=='g') &&
      ( c44[1][0][0][0][0]=='j') &&
      ( c44[1][1][0][0][0]=='m') &&
      ( c44[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 44 ** OK ***\n");
   else
   printf("*** M3GARI01 - 44 ** NG ****\n");

   printf("*** M3GARI01 - 45 ** NOT RUN ***\n");

   if(( c46[0][0][0][0][0]=='a') &&
      ( c46[0][1][0][0][0]=='d') &&
      ( c46[0][2][0][0][0]=='g') &&
      ( c46[1][0][0][0][0]=='j') &&
      ( c46[1][1][0][0][0]=='m') &&
      ( c46[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 46 ** OK ***\n");
   else
   printf("*** M3GARI01 - 46 ** NG ****\n");

   if(( c47[0][0][0][0][0]=='a') &&
      ( c47[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 47 ** OK ***\n");
   else
   printf("*** M3GARI01 - 47 ** NG ****\n");

   if(( c477[0][0][0][0][0]=='a') &&
      ( c477[0][1][0][0][0]=='d') &&
      ( c477[0][2][0][0][0]=='g') &&
      ( c477[1][0][0][0][0]=='j') &&
      ( c477[1][1][0][0][0]=='m') &&
      ( c477[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 477 ** OK ***\n");
   else
   printf("*** M3GARI01 - 477 ** NG ****\n");

   printf("*** M3GARI01 - 48 ** NOT RUN ***\n");

   if(( c49[0][0][0][0][0]=='a') &&
      ( c49[0][1][0][0][0]=='d') &&
      ( c49[0][2][0][0][0]=='g') &&
      ( c49[1][0][0][0][0]=='j') &&
      ( c49[1][1][0][0][0]=='m') &&
      ( c49[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 49 ** OK ***\n");
   else
   printf("*** M3GARI01 - 49 ** NG ****\n");

   if(( c50[0][0][0][0][0]=='a') &&
      ( c50[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 50 ** OK ***\n");
   else
   printf("*** M3GARI01 - 50 ** NG ****\n");

   if(( c51[0][0][0][0][0]=='a') &&
      ( c51[0][1][0][0][0]=='d') &&
      ( c51[0][2][0][0][0]=='g') &&
      ( c51[1][0][0][0][0]=='j') &&
      ( c51[1][1][0][0][0]=='m') &&
      ( c51[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 51 ** OK ***\n");
   else
   printf("*** M3GARI01 - 51 ** NG ****\n");

   printf("*** M3GARI01 - 52 ** NOT RUN ***\n");

   if(( c53[0][0][0][0][0]=='a') &&
      ( c53[0][1][0][0][0]=='d') &&
      ( c53[0][2][0][0][0]=='g') &&
      ( c53[1][0][0][0][0]=='j') &&
      ( c53[1][1][0][0][0]=='m') &&
      ( c53[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 53 ** OK ***\n");
   else
   printf("*** M3GARI01 - 53 ** NG ****\n");

   if(( c54[0][0][0][0][0]=='a') &&
      ( c54[1][0][0][0][0]=='j'))
   printf("*** M3GARI01 - 54 ** OK ***\n");
   else
   printf("*** M3GARI01 - 54 ** NG ****\n");

   if(( c55[0][0][0][0][0]=='a') &&
      ( c55[0][1][0][0][0]=='d') &&
      ( c55[0][2][0][0][0]=='g') &&
      ( c55[1][0][0][0][0]=='j') &&
      ( c55[1][1][0][0][0]=='m') &&
      ( c55[1][2][0][0][0]=='p'))
   printf("*** M3GARI01 - 55 ** OK ***\n");
   else
   printf("*** M3GARI01 - 55 ** NG ****\n");

   if(( c56[0][0][0][0][0]== 1 ) &&
      ( c56[0][0][0][0][1]== 2 ) &&
      ( c56[0][0][0][0][2]== 3 ) &&
      ( c56[1][0][0][0][0]== 4 ) &&
      ( c56[1][0][0][0][1]== 5 ) &&
      ( c56[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 56 ** OK ***\n");
   else
   printf("*** M3GARI01 - 56 ** NG ****\n");

   if(( c57[0][0][0][0][0]== 1 ) &&
      ( c57[1][0][0][0][0]== 4 ))
   printf("*** M3GARI01 - 57 ** OK ***\n");
   else
   printf("*** M3GARI01 - 57 ** NG ****\n");

   if(( c58[0][0][0][0][0]== 1 ) &&
      ( c58[0][0][0][0][1]== 2 ) &&
      ( c58[0][0][0][0][2]== 3 ) &&
      ( c58[1][0][0][0][0]== 4 ) &&
      ( c58[1][0][0][0][1]== 5 ) &&
      ( c58[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 58 ** OK ***\n");
   else
   printf("*** M3GARI01 - 58 ** NG ****\n");

   if(( c59[0][0][0][0][0]== 1 ) &&
      ( c59[0][0][0][0][1]== 2 ) &&
      ( c59[0][0][0][0][2]== 3 ) &&
      ( c59[1][0][0][0][0]== 4 ) &&
      ( c59[1][0][0][0][1]== 5 ) &&
      ( c59[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 59 ** OK ***\n");
   else
   printf("*** M3GARI01 - 59 ** NG ****\n");

   if(( c60[0][0][0][0][0]== 1 ) &&
      ( c60[1][0][0][0][0]== 4 ))
   printf("*** M3GARI01 - 60 ** OK ***\n");
   else
   printf("*** M3GARI01 - 60 ** NG ****\n");

   if(( c61[0][0][0][0][0]== 1 ) &&
      ( c61[0][0][0][0][1]== 2 ) &&
      ( c61[0][0][0][0][2]== 3 ) &&
      ( c61[1][0][0][0][0]== 4 ) &&
      ( c61[1][0][0][0][1]== 5 ) &&
      ( c61[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 61 ** OK ***\n");
   else
   printf("*** M3GARI01 - 61 ** NG ****\n");

   if(( c62[0][0][0][0][0]== 1 ) &&
      ( c62[0][0][0][0][1]== 2 ) &&
      ( c62[0][0][0][0][2]== 3 ) &&
      ( c62[1][0][0][0][0]== 4 ) &&
      ( c62[1][0][0][0][1]== 5 ) &&
      ( c62[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 62 ** OK ***\n");
   else
   printf("*** M3GARI01 - 62 ** NG ****\n");

   if(( c63[0][0][0][0][0]== 1 ) &&
      ( c63[1][0][0][0][0]== 4 ))
   printf("*** M3GARI01 - 63 ** OK ***\n");
   else
   printf("*** M3GARI01 - 63 ** NG ****\n");

   if(( c64[0][0][0][0][0]== 1 ) &&
      ( c64[0][0][0][0][1]== 2 ) &&
      ( c64[0][0][0][0][2]== 3 ) &&
      ( c64[1][0][0][0][0]== 4 ) &&
      ( c64[1][0][0][0][1]== 5 ) &&
      ( c64[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 64 ** OK ***\n");
   else
   printf("*** M3GARI01 - 64 ** NG ****\n");

   if(( c65[0][0][0][0][0]== 1 ) &&
      ( c65[0][0][0][0][1]== 2 ) &&
      ( c65[0][0][0][0][2]== 3 ) &&
      ( c65[1][0][0][0][0]== 4 ) &&
      ( c65[1][0][0][0][1]== 5 ) &&
      ( c65[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 65 ** OK ***\n");
   else
   printf("*** M3GARI01 - 65 ** NG ****\n");

   if(( c66[0][0][0][0][0]== 1 ) &&
      ( c66[1][0][0][0][0]== 4 ))
   printf("*** M3GARI01 - 66 ** OK ***\n");
   else
   printf("*** M3GARI01 - 66 ** NG ****\n");

   if(( c67[0][0][0][0][0]== 1 ) &&
      ( c67[0][0][0][0][1]== 2 ) &&
      ( c67[0][0][0][0][2]== 3 ) &&
      ( c67[1][0][0][0][0]== 4 ) &&
      ( c67[1][0][0][0][1]== 5 ) &&
      ( c67[1][0][0][0][2]== 6 ))
   printf("*** M3GARI01 - 67 ** OK ***\n");
   else
   printf("*** M3GARI01 - 67 ** NG ****\n");

   printf("******* M3GARI01 TEST ENDED *******\n");
   return 0;
}

 
 
 

int x;
static int y;
struct bt{
  unsigned int ba:2;
  unsigned int bb:3;
  unsigned int bc:4;
};
struct t {
  int c;
  int d;
};
int mptest01()
{
  int a;
  int b;
  static int i;
  int *p;
  struct t *p1,s,ss;
  struct bt pbt1;
  extern struct bt *pbt;
  extern char str,*pc;
  void ii(),ff(),f10(struct bt*,int);

  printf("\n***** MPTEST01 START *****\n");
  ii();
l1:
  b=1;
  p=&b;
  i=0;
  a=b+1;
l2:
  if (a<10)
  {
   a=*p+1+a;
   goto l2;
  }
  x=1;
  y=2;
  p=&ss.c;
l3:
  ff();
  i=i+4;
  s.c=1;
  s.d=y;
  p1=&s;
  s.c=p1->d;
  y=*p;
  s.d=y;
  f10(pbt,1);
l4:
  pbt1.ba=pbt->ba;
  pbt1.bb=pbt->bb;
  if(pbt->ba!=0){
    x=i+p1->c;
    pbt1.bc=x;
  }else{
  }
  pbt->bc=pbt1.bc;
  f10(&pbt1,2);
  printf("***** MPTEST01 END *****\n");
  return 0;
}
void ff()
{
  printf("  in ''f''\n");
  return;
}

 struct bt *pbt,ppbt;
 char str,*pc;

void ii()
{
  printf("  in ''ii''\n");
  pbt=&ppbt;
  if(pbt->ba - ppbt.ba) printf("** NG <1> **\n");
  if(pbt->bb - ppbt.bb) printf("** NG <2> **\n");
  if(pbt->bc - ppbt.bc) printf("** NG <3> **\n");
  return;
}


void f10(pp,j)
  struct bt *pp;
  int j;
{
  static int i=0;
  static char *ncc="NG",cc[]="OK";
         char *c;
  printf("  in ''f1''\n");
  if(++i==j) c=cc;
  else       c=ncc;
  printf("  ** %s **\n",c);
}

 
 
 

 
 
 
int     ga;
int mptest02()
{
  int   a,b,c,d,i;
  int   fff(),(*fp)(),ii;

  fp=fff;i=0;
  ii=(*fp)(i);

  ga=1;
  printf("start mptest02\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
                    
    a=b+c;          
    if(i<1)
    {
      i=func();     
      d=b+c;        
    }
  }
  if(a==2&&d==2)
    printf("      mptest02 ok\n");
  else {
    printf("      mptest02 ng a=%d(0)\n",a);
    printf("                  d=%d(0)\n",d);
  }
  printf("end   mptest02\n");
  return 0;
}

 
 
 

int func()
{
  return 1;
}
int fff()
{
  return 1;
}

int scrlp11()
{
    char dim[10];
    int i;
    for(i=0;i<10;i++) dim[i] = 0;
    test0(dim);
    test1(dim);
    test2(dim);
    test3(dim);
    test4(dim);
    test5(dim);
    test6(dim);
    test7(dim);
    test8(dim);
    test9(dim);
    testa(dim);
    if( dim[1] == 11 ) {
      puts(" OK ");
    }
    else {
      puts(" OK ");
    }
   return 0;
}
 int test0(dim)
char dim[];
{
   register char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test1(dim)
char dim[];
{
   register short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test2(dim)
char dim[];
{
   register long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test3(dim)
char dim[];
{
   register unsigned char i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test4(dim)
char dim[];
{
   register unsigned short int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test5(dim)
char dim[];
{
   register unsigned long int i;
   for(i=0;i<10;i++) {
     dim[i] += i;
   }
   return 0;
}
 int test6(dim)
char dim[];
{
   register float i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }
   return 0;
}
 int test7(dim)
char dim[];
{
   register double i;
   for(i=0;i<10;i++) {
     dim[(int )i] += i;
   }
   return 0;
}
 int test8(dim)
char dim[];
{
   int j;
   register int *i;
   i=&j;
   for(*i=0;*i<10;(*i)++) {
     dim[*i] += *i;
   }
   return 0;
}
 int test9(dim)
register char *dim;
{
   register int i;
   register int j=0;
   register int k=10;
   for(i=j;i<k;i++) {
     dim[i] += i;
   }
   return 0;
}

 
 
 

 int testa(dim)
register char *dim;
{
   register int i;
   register int j=0;
   register int k=10;
   register int l=1;
   for(i=j;i<k;i+=l) {
     register int m=0;
     dim[i] += (i+m);
   }
   return 0;
}

  
#define k100 100
#define true 1
#define false 0
typedef int  logical;
int sswitch;
void arctan();
void clear();
void init();
void pradd();
void prsub();
void prmul();
void prdiv();
void prt();

 int scrlp12()
{
       char char1[100];
       int a[k100];
       int c[k100];
       double  ans,work;
       sswitch=0;
       work =  12.0*atan2(1.0,18.0);
       ans  =  work;
       work =   8.0*atan2(1.0,57.0);
       ans  =  work+ans;
       work =   5.0*atan2(1.0,239.0);
       ans  =  ans-work;
       sprintf(char1,"%f",ans*4.0);
       if ( strcmp(char1,"3.141593")==0) {
         puts("******* OK.1 ******");
       }
       else {
         puts("******* NG.1 ******");
       }

       clear( c );
       arctan( a, 12 , 18,       1);
       pradd( c, a );
       arctan( a,       8 , 57,  1);
       pradd( c, a );
       arctan( a,       5 ,239,  1);
       prsub( c, a );
       prmul( c, 4 );
       prt( c );
       if( c[99] == 148 && c[0] == 3 )
         printf("OK \n");
       else
         printf("NG \n");
       return 0;
}

void arctan( c, p, q ,flag )
int c[k100];
int p,q,flag;
{
       int d,e;
       int a[k100];
       int b[k100];
       logical check();
       d=3;
       e=q*q;
       init( a, p, q );
       clear( c );
       if( flag == 0 ) {
         prsub( c,a );
         flag=1;
       }
       else if( flag == 1 ) {
         pradd( c,a );
         flag=0;
       }
       else {
         puts(" error ");
         exit(1);
       }
l10:   ;
         prdiv( a, a, e );
         if( check( a ) ) goto l20;
         prdiv( b, a, d );
         d=d+2;
         if( flag == 0 ) {
           prsub( c,b );
           flag=1;
         }
         else {
           pradd( c,b );
           flag=0;
         }
       goto l10;
l20:   ;
}
void clear( c )
int c[k100];
{
       int i;
       for(i=0;i<k100;i++) c[i] = 0;
}
void init( a, p, q )
int a[k100];
int p,q ;
{
       int s,i;
       i=0 ;
l10:   ;
         s = p/q;
         if( s!=0 ) {
           a[i]=s;
           p=(p-s*q)*1000;
         }
         else {
           a[i]=s;
           p=p*1000;
         }
         i=i+1;
       if( i < k100) goto l10;
}
void pradd( c, a )
int c[k100],a[k100];
{
       int i,carry,n;
       carry=0;
       for(i=k100-1;i>=0;i--) {
         n=c[i]+a[i]+carry;
         if( n >= 1000 ) {
           if( n >= 2000 ) {
             printf (" ERROR OCCER IN ADD N= %d \n",n);
             exit(1);
           }
           n=n-1000;
           c[i]=n;
           carry=1;
         }
         else {
           c[i]=n;
           carry=0;
         }
       }
l10:   ;
       if( carry != 0 ) {
         puts(" OVER FLOW IN ADD ");
         exit(1);
       }
}
void prsub( c, a )
int c[k100],a[k100];
{
       int i,n,carry;
       carry=0;
       for(i=k100-1;i>=0;i--) {
         n=c[i]-a[i]-carry;
         if( n < 0 ) {
           if( n < -1000 ) {
             printf("  error occurred in sub n=%d \n",n);
             exit(1);
           }
           n=n+1000;
           c[i]=n;
           carry=1;
         }
         else {
           c[i]=n;
           carry=0;
         }
       }
l10:   ;
}
 void prmul( a, d )
 int a[k100],d;
 {
       int s;
       int i,carry;
       if( d >= 1000 ) {
         printf(" input data error mul d=%d",d);
         exit(1);
       }
       carry=0;
       for( i=k100-1;i>=0;i--) {
         s=a[i]*d+carry;
         if( s >= 1000 ) {
           a[i]=s%1000;
           carry=s/1000;
           if( s >=  1000000 ) {
             printf("error occurred in mul s=%d",s);
             exit(1);
           }
         }
         else  {
           a[i]=s;
           carry=0;
         }
       }
l10:   ;
       if( carry != 0 ) {
         puts(" over flow in mult ");
         exit(1);
       }
}
void prdiv( b, a, d )
int b[k100],a[k100],d;
{
       int i,s,h,j;
       i=0;
       h=a[i];
       if( d==0 ) goto l20;
l10:   ;
         s=h/d;
         if( i+1 >= k100 ) {
           j=0;
         }
         else {
           j=a[i+1];
         }
         b[i]=s;
         if( s != 0 ) {
           h=(h%d)*1000+j;
         }
         else {
           h=h*1000+j;
         }
       i=i+1;
       if( i <  k100 ) goto l10;
       return;
l20:   ;
       puts(" ERROR OCCER IN ZERO DIV ");
}
logical check( a )
int a[k100];
{
       int i;
       for(i=0;i<k100;i++) {
         if( a[i] != 0 ) {
           return false;
         }
       }
       return true;
}
void prt( n )
int n[k100];
{
  int i;
  for(i=0;i<k100;i=i+1) {
    printf("%03.3d",n[i]);
  }
  printf("\n");
  printf("\n");
}
