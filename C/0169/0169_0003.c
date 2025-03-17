#include <stdio.h>

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

 int fnc0(struct extag2 st1, struct extag4 st2)
 {
   printf("",st1.exst21.c + st2.c);

   return st1.exst21.c + st2.c;
 }
int main()
 {
 struct tag1 {
     int i;
     struct extag1 st11;
 } ;
 struct extag2 stex1 = { 123456, -123456, 127 };
 struct tag1   stin1 = { 222222, -222222, 0 };
 struct extag4 stex4 = { 32767, 127 };

 if (fnc0(stex1,exst31.st41) != 127){
     printf(" *** c1ndl055 test 3 error ***\n");
 }
 else{
     printf(" *** c1ndl055 test 3 ok ***\n");   
 }
 
}




