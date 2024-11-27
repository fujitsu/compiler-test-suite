#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
  
  
  
  
  
  
  
  

int main()
{

    int line1, line2, line3, line4 ,l;

#line  100
    line1=__LINE__              ;


  if ( line1 == 100 )

           printf(" *** \n");
        else
           printf(" *** \n");


#line 150   "test1"
    line1=__LINE__              ;


  if ( line1 == 150 &&  memcmp("test1",__FILE__,6)==0  )

           printf(" *** \n");
        else
           printf(" *** \n");


#define  int1  200

#line int1
    line1=__LINE__              ;


#define  ints  300 "test2"

#line ints
    line2=__LINE__              ;


  if (line1 == 200 && memcmp("test2",__FILE__,6)==0  &&  line2==300)

           printf(" *** \n\n");
        else
           printf(" *** \n\n");


#line  600
#

           printf(" *** IF IT WASNt err-msg on line-600'***\n");
           printf(" ***   \n\n");


#line  99999999
#line  99999998
     line2=__LINE__  ;
#line  1000

  if ( line2 == 99999998   )

           printf(" *** \n\n");
        else
           printf(" *** \n\n");

#line  1
     line3=__LINE__  ;


  if(  line3 == 1  )
           printf(" *** \n\n");
        else
           printf(" *** \n\n");


exit (0);
}
