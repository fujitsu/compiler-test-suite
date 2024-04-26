#include  <stdio.h>

 struct tag {
   int  first;
   int  second;
 } ;
 int  timesx;
 struct tag  *point,str;
int main() {
  int  a,b;
  void fun(int a,int b);
   point=&str;
   for(timesx=0;timesx<10;timesx++) {
     switch(timesx) {
       case 0 : a=1;
                break;
       case 1 : b=2;
                break;
     }
   }
   fun(a,b);
   if(point->first==1) {
     printf("*** test item-1  ok ***\n");
   }
   else {
     printf("??? test item-1  ng ???\n");
   }
   if(point->second==2) {
     printf("*** test item-2  ok ***\n");
   }
   else {
     printf("??? test item-2  ng ???\n");
   }
 }
 void fun(int a,int b)
 {
   point->first=a;
   point->second=b;
 }
