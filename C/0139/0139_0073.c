#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


 struct extag1 {
     int   i;
     char  c;
 } ;

 struct extag2 {                
     int   i;
     struct extag1 exst21;
 } ;
 struct extag3 {
     int i;
     struct extag4 {
         short  s;
         char   c;
     } st41;
     struct extag4 st42;             
 } exst31;

 struct tag0 {
     int i;
     short s;
 } st0 = { 10, -10 }, st1 = { 100, -100 }, *st0p = &st0;

struct tag{ int i; short s; };
extern  int fnc2(struct tag st1, struct tag *st2);
extern  int fnc1(struct tag0       st1, struct tag0 *st2);

int main()
 {
 struct tag1 {                  
     int i;
     struct extag1 st11;
 } ;
 struct extag2 stex1 = { 123456, -123456, 127 };
 struct tag1   stin1 = { 222222, -222222, 0 };
 struct extag4 stex4 = { 32767, 127 };

 int fnc0(struct extag2, struct extag4);  

 printf(" ***  test start ******\n");

 if (stex1.i!=123456 || stex1.exst21.i!=-123456 || stex1.exst21.c!=127)
     printf(" ***  test 1 error ***\n");

 if (stin1.i!=222222 || stin1.st11.i!=-stin1.i || stin1.st11.c)
     printf(" ***  test 2 error ***\n");

 if (fnc0(stex1,exst31.st41) != 127)
     printf(" ***  test 3 error ***\n");

 if (fnc1(st0,&st1) != -86)
     printf(" ***  test 4 error ***\n");

 if (fnc2(*((struct tag *) &st1),(struct tag *)st0p) != 65422)
     printf(" ***  test 5 error ***\n");

   {
      struct tag0 st00 = { 0,-1 };      
      if (st00.i != 0 || st00.s != -1)
          printf(" ***  test 6 error ***\n");
   }
 printf(" ***  test end ******\n");
exit (0);
 }

 int fnc0(struct extag2 st1, struct extag4 st2)
 {                          
 return st1.exst21.c + st2.c;
 }

 extern  int fnc1(struct tag0       st1, struct tag0 *st2)
 {               
 struct tag0 st3 = { -1, -1 };        
 struct tag2 {
       struct tag0 st;                  
       short s;
 } st4 = { 1, 1, 1 };
 st1.i+=5;
 st2->s-=1;
 return st1.i+st2->s-st3.i-st4.st.i;
 }

 extern int  fnc2(struct tag st1, struct tag *st2)     
 {
 struct tag st3 = { 65535, 32767 };    
 struct tag2 {
       int     i;
       struct tag  st;                   
 } st4 = { 1, 2, 3 };

 return st1.s-st2->i+st3.i-st4.st.i;
 }

