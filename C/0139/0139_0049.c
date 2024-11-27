#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


 
int main()
{
     int    sin1, sin2, sin3, sin4, sin5, sin6          ;
     int    sin7, sin8, sin9, sin10,sin11,sin12         ;
     int    sdb1, sdb2, sdb3, sdb4, sdb5, sdb6          ;
     int    sdb7, sdb8, sdb9, sdb10,sdb11,sdb12         ;
     enum   day{mon,tue,wed,thu=9,fri,sat,SUN}week    ;


 


 

     sin1 = sizeof(( int ) 1 ) + 1         ;
     sin2 = 'D' - sizeof(( char) 1 )    ;
     sin3 = sizeof(( int ) 1 ) * fri       ;


     if (  sin1  ==  5    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin2  ==  'C' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin3  ==  40   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin4 = sizeof(( int )'B') * 1         ;
     sin5 = 'D' - sizeof(( char)'B')    ;
     sin6 = sizeof(( int )'B') + wed       ;


     if (  sin4  ==  4    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin5  ==  'C'  )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin6  ==  6       )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin7 = sizeof(( int )tue) * 1         ;
     sin8 = sizeof(( char)tue) + 'C'    ;
     sin9 = sizeof(( int )tue) - fri       ;


     if (  sin7  ==  4    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin8  ==  'D' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin9  ==  -6   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin10= sizeof(( char)1.5) * 1         ;
     sin11= sizeof(( char)1.5) + 'D'    ;
     sin12= sizeof(( int )1.5) - fri       ;


     if (  sin10 ==  1    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin11 == 'E' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sin12 ==  -6   )

           printf(" *** \n");
        else
           printf(" *** \n");



 


 

     sdb1 = sizeof(( double ) 1 ) + 1      ;
     sdb2 = sizeof(( float  ) 1 ) - 'F' ;
     sdb3 = sizeof(( double ) 1 ) + fri    ;


     if (  sdb1  ==  9    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb2  == -'B' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb3  ==  18   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb4 = sizeof(( float  )'B') * 1      ;
     sdb5 = sizeof(( double )'B') + 'A' - 'E'    ;
     sdb6 = sizeof(( float  )'B') - fri    ;


     if (  sdb4  ==  4    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb5  ==  4    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb6  ==  -6   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb7 = sizeof(( double )tue) - 1      ;
     sdb8 = sizeof(( float  )tue) + 'A' ;
     sdb9 = sizeof(( double )tue) * fri    ;


     if (  sdb7  ==  7    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb8  ==  'E' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb9  ==  80   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb10= sizeof(( double )1.5) + 1      ;
     sdb11= sizeof(( float  )1.5) - 'E' ;
     sdb12= sizeof(( float  )1.5) * fri    ;


     if (  sdb10 ==  9    )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb11 == -'A' )

           printf(" *** \n");
        else
           printf(" *** \n");


     if (  sdb12 ==  40   )

           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
  }
