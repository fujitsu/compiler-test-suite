#include <stdio.h>
void func1();
int  func2();
void func3();
void func4();
void func5();
void func6();
void func7();
void func8();
void func9();
void func10();
void func11();
void func12();
void func13();
void func14();
void func15();
int main()
{
  printf (" START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  func9();
  func10();
  func11();
  func12();
  func13();
  func14();
  func15();
  printf (" END\n");
}
void func1()                        
{
  int a=0;
  switch (a)
  {
    case 0 :{
              break;
            }
    default:{
              printf (" FUNC1 NG\n");
            }
  }
}
int func2 (void)                        
{
  long int a=-1;
  int b;
  switch (a)
  {
    case -1:{
              ++b;
              return 0;
            }
  }
  printf (" FUNC2 NG\n");
}
void func3()                        
{
  short int a=0 ;
  int x;
  switch(a)
  {
    case 0+1:{
               printf (" FUNC3 NG\n");
               ++x;
             }
    default:{
               x=0;
               ++x;
            }
  }
}
void func4()                        
{
  char  a=0 ;
  switch(a)
  {
    default:{
              for(;;)
               break;
              break;
            }
    case 1 : printf (" FUNC4  NG\n");
  }
}
void func5()                        
{
  long int  a=1;
  int x=0;
  switch (a)
  {
    case 1:
    lab1  :{
             ++x;
             break;
           }
    lab2  : ;
   }
   if (x!=1) printf(" FUNC5 NG\n");
}
void func6()                        
{
  unsigned int a=1;
  int x=0;
  switch (a)
  {
    case 1: {
              if (a)  ++x;
            }
    default:{
              ++x;
              {
                ;
              }
            }
   }
   if (x!=2) printf(" FUNC6 NG\n");
}
void func7()                        
{
  unsigned long int a=1;
  switch (a)
  {
    case 1:
         {  }
    default:
         {  }
  }
}
void func8()                        
{
  unsigned char a=0,b=0;
  int x=0;
  switch (a)
  {
    case 0:{
             switch(b)
             {
               case 0 : ++x;
               default: ++x;
             }
             break;
           }
     default:++x;
  }
  switch (a)                    
  {
    case 0: ++x;
    default:{
              ++x;
              switch(b)
              {
                case 1 : ++x;
                default: ++x;
              }
            }
  }
  if (x!=5) printf(" FUNC8 NG\n");
}
void func9()                        
{
  unsigned long int a=0,b=0;
  int x=0,c;
  switch (a)
  {
    case 0:{
             for(c=1;c<2;++c)
               ++x;
             break;
           }
    default:x=-1;
  }
  switch (a)
  {
    case 1: x=-1;
    default:{
              c=1;
              while(c<2)
              {
                ++x;
                ++c;
              }
            }
  }
  switch (a)
  {
    case 0 :{
              if (b==0)
                ++x;
              goto lab;
            }
    default:x=-1;
  }
lab:
  switch (a)
  {
    case 0 :{
              for(c=1; c<3; ++c)
              {
                if (c==2)
                  continue;
                ++x;
              }
            }
  }
  switch (a)
  {
    case 0 :{
              c=1;
              do
              {
                ++c;
                ++x;
              }
              while(c<2);
            }
  }
  if (x!=5 ) printf(" FUNC09 NG\n") ;
}
void func10()                       
{
  int a=0;
  int x=0;
  switch (a)
  {
    default: ++x;
  }
  if (x!=1) printf(" FUNC10 NG\n");
}
void func11()                     
{                           
  signed char a1=127 ;
  signed char a2=-128;
  signed int  b1=2147483647;
  signed int  b2=-2147483648;
  signed short int c1=32767;
  signed short int c2=-32768;
  signed long int  d1=2147483647;
  signed long int  d2=-2147483648;
  int x=0;

  switch (a1)
  {
    case 127  : ++x;
  }
  switch (a2)
  {
    case -128: ++x;
  }
  switch (b1)
  {
    case 2147483647: ++x;
  }
  switch (b2)
  {
    case -2147483648: ++x;
  }
  switch (c1)
  {
    case 32767: ++x;
  }
  switch (c2)
  {
    case -32768: ++x;
  }
  switch (d1)
  {
    case  2147483647: ++x;
  }
  switch (d2)
  {
    case -2147483648: ++x;
  }
}
void func12()                     
{                           
  char a1=127 ;
  char a2=-128;
  int  b1=2147483647;
  int  b2=-2147483648;
  short int c1=32767;
  short int c2=-32768;
  long int  d1=2147483647;
  long int  d2=-2147483648;
  int x=0;

  switch (a1)
  {
    case 127  : ++x;
  }
  switch (a2)
  {
    case -128: ++x;
  }
  switch (b1)
  {
    case 2147483647: ++x;
  }
  switch (b2)
  {
    case -2147483648: ++x;
  }
  switch (c1)
  {
    case 32767: ++x;
  }
  switch (c2)
  {
    case -32768: ++x;
  }
  switch (d1)
  {
    case  2147483647: ++x;
  }
  switch (d2)
  {
    case -2147483648: ++x;
  }
}
void func13()                     
{                           
  unsigned char a1=255 ;
  unsigned int  b1=4294967295;
  unsigned short int c1=65535;
  unsigned long int  d1=4294967295;
  int x=0;

  switch (a1)
  {
    case 255  : ++x;
  }
  switch (b1)
  {
    case 4294967295: ++x;
  }
  switch (c1)
  {
    case 65535 : ++x;
  }
  switch (d1)
  {
    case 4294967295 : ++x;
  }
}
void func14()                     
{                           
  unsigned int a=0;
  unsigned short int b=2;
  unsigned long int  c=0;
  unsigned char e=2;
  int x=0;
  enum em {emmem} enn;

  switch (a)
  {
    case emmem: ++x;
  }
  switch (b)
  {
    case sizeof(b): ++x;
  }
  switch (c)
  {
    case 0+emmem: ++x;
  }
  switch (e)
  {
    case emmem+sizeof(b): ++x;
  }
  if (x!=4 ) printf(" FUNC14 NG\n") ;
}
void func15()                     
{
  int a=1;
  signed int b=-1;
  int x=0;
  struct { int a ;} st={0},*stp=&st;

  switch (a+b)
  {
    case 0: ++x;
  }
  switch (a*b)
  {
    case -1: ++x;
  }
  switch (a-b)
  {
    case 2: ++x;
  }
  switch (a/b)
  {
    case -1: ++x;
  }
  switch (a||b)
  {
    case 1: ++x;
  }
  switch (a&&b)
  {
    case 1: ++x;
  }
  switch (a? 1:0)
  {
    case 1: ++x;
  }
  switch (sizeof(a))
  {
    case 4: ++x;
  }
  switch (++a)
  {
    case 2: ++x;
  }
  switch (st.a)
  {
    case 0: ++x;
  }
  switch (stp->a)
  {
    case 0: ++x;
  }

  if (x!=11) printf(" FUNC15 NG\n") ;
}
