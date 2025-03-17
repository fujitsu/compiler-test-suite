#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();                           
  func2();                           
  func3();                           
  printf(" END  \n");
exit (0);
}
int func1()
{
  static unsigned long long int a[5] = { 0,1,2,3,4 };
  static unsigned long long int  *ap[3] ={
     a+1      ,                 
     a+3-1    ,                 
   (&a[2])+2-1                
   } ;
 
  if ( *(ap[0]) !=1 )
            printf("FUNC1  NO.1 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=2 )
            printf("FUNC1  NO.2 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=3 )
            printf("FUNC1  NO.3 NG  VALUE=%d\n",*(ap[2]) );
}
int func2()
{
  static signed long long int a[5] = { 0,1,2,3,4 };
  static signed long long int  *ap[3] ={
     a+1      ,                 
     a+3-1    ,                 
   (&a[2])+2-1                
   } ;
 
  if ( *(ap[0]) !=1 )
            printf("FUNC2  NO.1 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=2 )
            printf("FUNC2  NO.2 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=3 )
            printf("FUNC2  NO.3 NG  VALUE=%d\n",*(ap[2]) );
}
int func3()
{
  static long long int a[5] = { 0,1,2,3,4 };
  static long long int  *ap[3] ={
     a+1      ,                 
     a+3-1    ,                 
   (&a[2])+2-1                
   } ;
 
  if ( *(ap[0]) !=1 )
            printf("FUNC3  NO.1 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=2 )
            printf("FUNC3  NO.2 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=3 )
            printf("FUNC3  NO.3 NG  VALUE=%d\n",*(ap[2]) );
}
