#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  
  
  
  

int main()
{
     int    ans1,ans3,ans4,ans9,ans10    ;
     int    ans11,ans12,ans13,ans15,ans16;
     double ans2,ans5,ans6,ans7,ans8,ans14;
     enum   day{mon,tue,wed,thu=9,fri,sat,SUN}week;


 

     ans1 = 10        ;
     ans2 = (int)3.25 ;  
     ans3 = ! 'A'  ;  



     if (  ans1  ==  10   )

           printf(" *** \n");
        else
           printf(" *** \n");

     if (  ans2  == 3     )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans3  ==  0    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  16   ==  8 << tue )

           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans5 = 0.5 - 1   ;
     ans6 = 0.5 * 0.25;




     if (  ans5  == -0.5  )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans6  ==  0.125)

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  1.5  !=  'C'  )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  1.5>= mon   )

           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans9 = 'O' &  0            ;
     ans10= 'O' && 0.25         ;
     ans11= ('A' ?  'C':0 )  ;
     ans12= 'O' ^ mon          ;


     if (  ans9  ==  0  )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans10 == 1      )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans11 == 'C' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans12 == 'O' )

           printf(" *** \n");
        else
           printf(" *** \n");



 

     ans13= fri | 10  ;
     ans14= fri || 0.1 ;
     ans15= tue && 'A' ;
     ans16= fri * tue ;


     if (  ans13 ==  10   )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans14 ==  1    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans15 ==  1    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  ans16 ==  10   )

           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
  }
