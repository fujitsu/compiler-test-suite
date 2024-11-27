#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

int main (void)
{
  int b;


  int a=2;
  int *aa=&a;
  int **aaa=&aa;
  int ***aaaa=&aaa;
  int ****aaaaa=&aaaa;
  int *****aaaaaa=&aaaaa;
  int ******aaaaaaa=&aaaaaa;


  static int arr[2][2][2][2][1][2][1] ={

                       {{{{{{1},{2}}},
                             {{{3},{4}}}},
                           {{{{5},{6}}},
                             {{{7},{8}}}}},

                         {{{{{9},{10}}},
                             {{{11},{12}}}},
                           {{{{13},{14}}},
                             {{{15},{16}}}}}},

                       {{{{{{17},{18}}},
                             {{{19},{20}}}},
                           {{{{21},{22}}},
                             {{{23},{24}}}}},

                         {{{{{25},{26}}},
                             {{{27},{28}}}},
                           {{{{29},{30}}},
                             {{{31},{32}}}}}}

                                                    };


   int ar1,ar2,ar3,ar4,ar5,ar6,ar7 ;

   int fu1, fu2, fu3, fu4, fu5, fu6, fu7 ;
   int f1(),f2(),f3(),f4(),f5(),f6(),f7();

   int ans1,f=1;


  if ( **aaaaaaa==aaaaa  && ******aaaaaaa==2 )

           printf(" *** \n");
        else
           printf(" *** \n");



   ar1=arr[1][1][1][1][0][1][0];
   ar2=*arr[1][1][1][0][0][1];
   ar3=**arr[1][1][0][1][0];
   ar4=***arr[1][0][1][1];
   ar5=****arr[1][0][1];
   ar6=*****arr[0][1];
   ar7=******arr[1];


   if ( (ar1-2 == ar2) )

           printf(" *** \n");
        else
           printf(" *** \n");


   if ( (ar3 == ar4+4) )

           printf(" *** \n");
        else
           printf(" *** \n");

 printf("ar3=%d\n",ar3);
 printf("ar4=%d\n",ar4);
   if ( (ar5 == ar6+12) )

           printf(" *** \n");
        else
           printf(" *** \n");

 printf("ar5=%d\n",ar5);
 printf("ar6=%d\n",ar6);

   if ( (ar7 == 17) )

           printf(" *** \n");
        else
           printf(" *** \n");

 printf("ar7=%d\n",ar7);


   if ( f1()+1 == f2()  && f3()==f4()-1  &&  f5()-4==f6()-5==f7()-6 )

           printf(" *** \n");
        else
           printf(" *** \n");



   b=(((10+((((10+(10+(((((((10+(((10+((((10+((10*(((((10-(((10+10))))
      +10)+10)+10+10))))+10+10+10))+10)+10)))+10+10+10))+10+10+10+10+
      10+10+10)))))))+10)))))));



   if ( b == 520 )

           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
}
 int f1 (void)
 {
    return(1);
 }
 int f2 (void)
 {
    return(2);
 }
 int f3 (void)
 {
    return(3);
 }
 int f4 (void)
 {
    return(4);
 }
 int f5 (void)
 {
    return(5);
 }
 int f6 (void)
 {
    return(6);
 }
 int f7 (void)
 {
    return(7);
 }
