#include  <stdio.h>

 struct ren
  {
     signed char           fi1 : 1;
     signed char           frv : 6;
     signed short int      fi2 :16;
     unsigned short int    fu2 :16;
     signed long int       fi4 :32;
     unsigned long int      fu4 :32;
     unsigned long int      fu42: 1;
     unsigned long int      fu43: 1;
     unsigned long int      frv3:30;
  } *p ;
int main()
 {
 struct  ren   s  ;
 signed char          i1 ;
 signed short int     i2 ;
 unsigned short int   u2 ;
 long int             i4 ;
 long long int        i8 ;
 int            y ;
     printf("<<<<<< START >>>>>>\n");
     i1=i2=u2=i8=0 ;
     s.fi1 = 0 ;         
     s.fu2 = i2 ;        
     s.fu2 = i1 ;        
     s.fu4 = u2 ;        
     s.fu4 = i8;         
     s.fi2 = 0 ;         
     s.fi2 = i2 ;        
     s.fi2 = i1 ;        
     s.fi4 = u2 ;        
     s.fi4 = i8;         
     s.fu42 = 1 ;        
     s.fu43 = 0 ;        
     p=&s;
     for (y=1 ;y<=10;y++)
      {
         if ((y&1)==0)
              p->fu42 =0;
         else p->fu43 =1;
      }
     
     printf("**s.fu43=%x ** \n",s.fu43);
     printf("**s.fu42=%x ** \n",s.fu42);
     if (s.fu43==(unsigned char)1 &&
         s.fu42==(unsigned char)0   )
         printf("**** OK ****\n");
     else
         printf("???? NG ????\n");
     i2 = s.fi2 ; 
     i2 = s.fi4 ; 
     i1 = s.fu2 ; 
     i1 = s.fu4 ; 
     i1 = s.fi1 ; 
     i4 = s.fi2 ; 
     i4 = s.fu2 ; 
     i2 = s.fu42 ;
     i8 = s.fi4 = i2  ;
     i8 = p->fi4 ;     
     i8 = s.fu4  ;     
     i8 = p->fu4 ;     
     printf("<<<<<< END >>>>>>\n");
 }
