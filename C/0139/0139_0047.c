#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

int main()
{
     int    ans1, ans2, ans3, ans4, ans5, ans6          ;
     int    ans7, ans8, ans9, ans10,ans11,ans12         ;
     enum   day{mon,tue,wed,thu=9,fri,sat,SUN}week    ;


 

                
                



 


 

     ans1 = sizeof( 10 ) * 10              ;
     ans2 = sizeof( 10 ) + 'A'          ;
     ans3 = sizeof( 10 ) - fri             ;


#if ILP
     if (  ans1  ==  80   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans1  ==  40   )
#endif
           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans2  ==  'I' )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans2  ==  'E' )
#endif
           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans3  ==  -2   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans3  ==  -6   )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans4 = sizeof( 'B' ) - 10              ;
     ans5 = sizeof( 'B' ) + 'B'             ;
     ans6 = sizeof( 'B' ) * fri             ;


#if ILP
     if (  ans4  ==  -2   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans4  ==  -6   )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans5  ==  'J' )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans5  ==  'F' )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans6  ==  80   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans6  ==  40   )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans7 = sizeof( wed ) - 10              ;
     ans8 = sizeof( wed ) + 'A'          ;
     ans9 = sizeof( wed ) * fri             ;


#if ILP
     if (  ans7  ==  -2   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans7  ==  -6   )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans8  ==  'I' )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans8  ==  'E' )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");


#if ILP
     if (  ans9  ==  80   )
#else (A32 || I64 || LLP || LP || A64)
     if (  ans9  ==  40   )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans10 = sizeof( 0.5 ) * 10              ;
     ans11 = sizeof( 0.5 ) - 9               ;
     ans12 = sizeof( 0.5 ) + fri             ;


     if (  ans10 ==  80   )

           printf(" *** \n");
        else
           printf(" *** \n");


#if (A32 || I64 || LLP )
     if (  ans11 ==  4294967295  )
#else A64
     if (  ans11 ==  18446744073709551615  )
#endif


           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans12 ==  18   )

           printf(" *** \n");
        else
           printf(" *** \n");

exit (0);
  }
