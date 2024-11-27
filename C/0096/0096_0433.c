#include  <stdio.h>
 
 
 
   void errcheck();
#ifdef __STDC__
   int *a[5],b,func1(int b),c,err=0;
#else
   int *a[5],b,func1(),c,err=0;
#endif
int main()
     {
        printf("\n***  -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        func1(b);
        c=*a[0] ;
        if(c==400) printf("*** OK c = %d ***\n",c) ;
        else  {   printf("*** NG c = %d ***\n",c) ;
                   err++;
              }
        errcheck();
        printf("\n***  -- END   ***\n") ;
     }
   int func1(d)
        int d ;
     {
        int e ;
        d=d+200;
        a[1]=&d ;
        e=*a[1] ;
        if(e==600) printf("*** OK e = %d ***\n",e) ;
        else  {   printf("*** NG e = %d ***\n",e) ;
                   err++;
              }
     }
 void errcheck()
 {
      if(err==0)
       {
         printf("***    OK         ***\n");
       }
      else
       {
         printf("***    NG         ***\n");
       }
 }
