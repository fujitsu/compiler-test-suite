#include  <stdio.h>
 
 
 
   static char ok_msg[] = {"***  *** OK ***"}  ;
   static char ng_msg[] = {"***  *** NG ***"}  ;
   struct t {
     int  a  ;
     int  b  ;
     } z ,func()  ;
int main()
     {
        z=func()  ;
        if(z.a==5 && z.b==7)
          printf("%s\n",ok_msg) ;
        else
          printf("%s\n",ng_msg) ;
     }
   struct t func()
     {
       struct t s ;
       s.a=5  ;
       s.b=7  ;
       return(s) ;
     }
