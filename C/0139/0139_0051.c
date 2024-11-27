#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

  
  

int main()
{
     double nin1, nin2, nin3, nin4                      ;
     double ndb1, ndb2, ndb3, ndb4, ndb5, ndb6, ndb7    ;
     double ndb8, ndb9, ndb10,ndb11,ndb12,ndb13,ndb14   ;
     double ndb15,ndb16                                 ;
     double sin1, sin2, sin3, sin4                      ;
     double sdb1, sdb2, sdb3, sdb4                      ;
     enum   day{mon,tue,wed,thu=9,fri,sat,SUN}week    ;


 

 


 

     nin1 = ( int ) 1  + 0.5               ;

     if (  nin1 > 1  &&  nin1 < 2  )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     nin2 = ( int )'B' + 1.5            ;

     if (  nin2 >  67   &&   nin2 <  68  )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     nin3 = ( int )tue + 1.5               ;

     if (  nin3 > 2   && nin3 < 3   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     nin4 = ( int )1.5 + 1.5               ;

     if (  nin4 > 2   && nin4 < 3   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     ndb1 = ( double )1 + 1                ;
     ndb2 = ( double )1 + 'A' - 'C'  ;
     ndb3 = ( double )1 + fri              ;
     ndb4 = ( double )1 + 1.5              ;

     if (  sizeof( (double)1 ) == 8  )
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }

        else
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }


 

     ndb5 = ( double )'o' + 1              ;
     ndb6 = ( double )'o' + 'A'         ;
     ndb7 = ( double )'o' + fri            ;
     ndb8 = ( double )'o' + 1.5            ;

     if (  sizeof( (double)'o' ) == 8  )
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }

        else
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }


 

     ndb9 = ( double )tue + 1              ;
     ndb10= ( double )tue + 'C'         ;
     ndb11= ( double )tue + fri            ;
     ndb12= ( double )tue + 1.5            ;

     if (  sizeof( (double)fri ) == 8  )
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }

        else
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }


 

     ndb13= ( double )1.5 + 1              ;
     ndb14= ( double )1.5 + 'A'         ;
     ndb15= ( double )1.5 + fri            ;
     ndb16= ( double )1.5 + 1.5            ;

     if (  sizeof( (double)fri ) == 8  )
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }

        else
        {

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");

           printf(" *** \n");
        }



 

 


 

     sin1 = sizeof(( int ) 1 ) + 1.5       ;

     if (  sin1 > 5   && sin1 < 6   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin2 = sizeof(( int )'B') + 1.5       ;


     if (  sin2 > 5   && sin2 < 6   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin3 = sizeof(( int )tue) + 1.5       ;


     if (  sin3 > 5   && sin3 < 6   )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sin4 = sizeof(( int )1.5) + 1.5       ;


     if (  sin4 > 5   && sin4 < 6   )

           printf(" *** \n");
        else
           printf(" *** \n");




 


 

     sdb1 = sizeof(( double ) 1 ) + 1.5    ;


     if (  sdb1 > 9   && sdb1 < 10  )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb2 = sizeof(( double )'A') + 1.5    ;


     if (  sdb2 > 9   && sdb2 < 10  )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb3 = sizeof(( double )tue) + 1.5    ;

     if (  sdb3 > 9   && sdb3 < 10  )

           printf(" *** \n");
        else
           printf(" *** \n");


 

     sdb4 = sizeof(( double )1.5) + 1.5    ;


     if (  sdb4 > 9   && sdb4 < 10  )

           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
}
