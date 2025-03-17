#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func5();
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();                           
  func2();                           
  func3();                           
  func4();                           
  func5();                           
  printf(" END  \n");
exit (0);
}
int func1()
{
  static  char a[14] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0 };
  static char  *ap[14] ={
     a+0-0    ,                 
     a+2-1    ,                 
     a-1+3     ,                
     a+(1+2)  ,                 
     a+(5-1)  ,                 
    (a+10)-(1+4)   ,            
    (a+10)-(5-1)   ,            
   (&a[7])+0-0       ,        
   (&a[7])+1-0       ,        
   (&a[7])-0+1+1     ,        
   (&a[7])+(0+2+1)   ,        
   (&a[10])+(1*5-4)   ,       
   (&a[11])+(2/2)     ,       
   (&a[13])-(1*2-2)           
   } ;
  if ( *(ap[0]) !=0 )
            printf("FUNC1  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FUNC1  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FUNC1  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FUNC1  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FUNC1  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FUNC1  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FUNC1  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FUNC1  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FUNC1  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FUNC1  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FUNC1  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FUNC1  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FUNC1  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FUNC1  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int func2()
{
  static    signed int a[14] ={0,0,0,0,0,
                                0,0,0,0,0,
                                0,0,0,0   };
  static   signed int  *ap[14] ={
     a+0-0    ,                 
     a+2-1    ,                 
     a-1+3     ,                
     a+(1+2)  ,                 
     a+(5-1)  ,                 
    (a+10)-(1+4)   ,            
    (a+10)-(5-1)   ,            
   (&a[7])+0-0       ,        
   (&a[7])+1-0       ,        
   (&a[7])-0+1+1     ,        
   (&a[7])+(0+2+1)   ,        
   (&a[10])+(1*5-4)   ,       
   (&a[11])+(2/2)     ,       
   (&a[13])-(1*2-2)           
   } ;
  if ( *(ap[0]) !=0 )
            printf("FUNC2  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FUNC2  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FUNC2  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FUNC2  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FUNC2  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FUNC2  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FUNC2  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FUNC2  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FUNC2  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FUNC2  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FUNC2  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FUNC2  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FUNC2  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FUNC2  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int func3()
{
  static  unsigned long int a[14] ={0,0,0,0,0,
                                       0,0,0,0,0,
                                       0,0,0,0   };
  static unsigned long int  *ap[14] ={
     a+0-0    ,                 
     a+2-1    ,                 
     a-1+3     ,                
     a+(1+2)  ,                 
     a+(5-1)  ,                 
    (a+10)-(1+4)   ,            
    (a+10)-(5-1)   ,            
   (&a[7])+0-0       ,        
   (&a[7])+1-0       ,        
   (&a[7])-0+1+1     ,        
   (&a[7])+(0+2+1)   ,        
   (&a[10])+(1*5-4)   ,       
   (&a[11])+(2/2)     ,       
   (&a[13])-(1*2-2)           
   } ;
  if ( *(ap[0]) !=0 )
            printf("FUNC3  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FUNC3  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FUNC3  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FUNC3  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FUNC3  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FUNC3  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FUNC3  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FUNC3  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FUNC3  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FUNC3  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FUNC3  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FUNC3  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FUNC3  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FUNC3  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int func4()
{
  static struct sttag
  { int a ;       } st[14]=
                     {   0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0   };
  static struct sttag *stp[14]= {
    st+0-0                 ,       
    st+2-1                 ,       
    st-1+3                 ,       
    st+(1+2)               ,       
    st+(5-1)               ,       
   (st+10)-(1+4)          ,       
   (st+10)-(5-1)          ,       
   (&st[7])+0-0         ,       
   (&st[7])+2-1         ,       
   (&st[7])-0+1+1       ,       
   (&st[10])+(0+1-1)    ,       
   (&st[10])+(1*4-3)    ,       
   (&st[10])+(6-4*1)    ,       
   (&st[13])-(1*2-2)            
  };
  if (  (*(stp[0])).a != 0 )
    printf("FUNC4  NO.0 NG  VALUE=%d\n",(*(stp[0])).a) ;
  if (  (*(stp[1])).a != 0 )
    printf("FUNC4  NO.1 NG  VALUE=%d\n",(*(stp[1])).a) ;
  if (  (*(stp[2])).a != 0 )
    printf("FUNC4  NO.2 NG  VALUE=%d\n",(*(stp[2])).a) ;
  if (  (*(stp[3])).a != 0 )
    printf("FUNC4  NO.3 NG  VALUE=%d\n",(*(stp[3])).a) ;
  if (  (*(stp[4])).a != 0 )
    printf("FUNC4  NO.4 NG  VALUE=%d\n",(*(stp[4])).a) ;
  if (  (*(stp[5])).a != 0 )
    printf("FUNC4  NO.5 NG  VALUE=%d\n",(*(stp[5])).a) ;
  if (  (*(stp[6])).a != 0 )
    printf("FUNC4  NO.6 NG  VALUE=%d\n",(*(stp[6])).a) ;
  if (  (*(stp[7])).a != 0 )
    printf("FUNC4  NO.7 NG  VALUE=%d\n",(*(stp[7])).a) ;
  if (  (*(stp[8])).a != 0 )
    printf("FUNC4  NO.8 NG  VALUE=%d\n",(*(stp[8])).a) ;
  if (  (*(stp[9])).a != 0 )
    printf("FUNC4  NO.9 NG  VALUE=%d\n",(*(stp[9])).a) ;
  if (  (*(stp[10])).a != 0 )
    printf("FUNC4  NO.10 NG  VALUE=%d\n",(*(stp[10])).a) ;
  if (  (*(stp[11])).a != 0 )
    printf("FUNC4  NO.11 NG  VALUE=%d\n",(*(stp[11])).a) ;
  if (  (*(stp[12])).a != 0 )
    printf("FUNC4  NO.12 NG  VALUE=%d\n",(*(stp[12])).a) ;
  if (  (*(stp[13])).a != 0 )
    printf("FUNC4  NO.13 NG  VALUE=%d\n",(*(stp[13])).a) ;
}
int func5()
{
  static union  untag
  { int a ;       } un[14]=
                     {   0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0   };
  static union  untag *unp[14]= {
    un+0-0                 ,       
    un+2-1                 ,       
    un-1+3                 ,       
    un+(1+2)               ,       
    un+(5-1)               ,       
   (un+10)-(1+4)          ,        
   (un+10)-(5-1)          ,        
   (&un[7])+0-0         ,        
   (&un[7])+2-1         ,        
   (&un[7])-0+1+1       ,        
   (&un[10])+(0+1-1)    ,        
   (&un[10])+(1*4-3)    ,        
   (&un[10])+(6-4*1)    ,        
   (&un[13])-(1*2-2)             
  };
  if (  (*(unp[0])).a != 0 )
    printf("FUNC5  NO.0 NG  VALUE=%d\n",(*(unp[0])).a) ;
  if (  (*(unp[1])).a != 0 )
    printf("FUNC5  NO.1 NG  VALUE=%d\n",(*(unp[1])).a) ;
  if (  (*(unp[2])).a != 0 )
    printf("FUNC5  NO.2 NG  VALUE=%d\n",(*(unp[2])).a) ;
  if (  (*(unp[3])).a != 0 )
    printf("FUNC5  NO.3 NG  VALUE=%d\n",(*(unp[3])).a) ;
  if (  (*(unp[4])).a != 0 )
    printf("FUNC5  NO.4 NG  VALUE=%d\n",(*(unp[4])).a) ;
  if (  (*(unp[5])).a != 0 )
    printf("FUNC5  NO.5 NG  VALUE=%d\n",(*(unp[5])).a) ;
  if (  (*(unp[6])).a != 0 )
    printf("FUNC5  NO.6 NG  VALUE=%d\n",(*(unp[6])).a) ;
  if (  (*(unp[7])).a != 0 )
    printf("FUNC5  NO.7 NG  VALUE=%d\n",(*(unp[7])).a) ;
  if (  (*(unp[8])).a != 0 )
    printf("FUNC5  NO.8 NG  VALUE=%d\n",(*(unp[8])).a) ;
  if (  (*(unp[9])).a != 0 )
    printf("FUNC5  NO.9 NG  VALUE=%d\n",(*(unp[9])).a) ;
  if (  (*(unp[10])).a != 0 )
    printf("FUNC5  NO.10 NG  VALUE=%d\n",(*(unp[10])).a) ;
  if (  (*(unp[11])).a != 0 )
    printf("FUNC5  NO.11 NG  VALUE=%d\n",(*(unp[11])).a) ;
  if (  (*(unp[12])).a != 0 )
    printf("FUNC5  NO.12 NG  VALUE=%d\n",(*(unp[12])).a) ;
  if (  (*(unp[13])).a != 0 )
    printf("FUNC5  NO.13 NG  VALUE=%d\n",(*(unp[13])).a) ;
}
