#include <stdio.h>
#include "000.h"

int main()
{


   header("gnu1.5.11",                    
          "linefeed notation");  

const char *c1 = "abc\ 	
d";
    schck(101,"abcd",c1,"linefeed notation No.1");

const char *c2 = "abc\ 	
d";
    schck(101,"abcd",c2,"linefeed notation No.2");

const char *c3 = "abc\	
d";
    schck(101,"abcd",c3,"linefeed notation No.3");

const char *c4 = "abc\	 
d";
    schck(101,"abcd",c4,"linefeed notation No.4");

const char *c5 = "abc\
d";
    schck(101,"abcd",c5,"linefeed notation No.5");

const char *c6 = "abc\
d";
    schck(101,"abcd",c6,"linefeed notation No.6");

const char *c7 = "abc\
d";
    schck(101,"abcd",c7,"linefeed notation No.7");

const char *c8 = "abc\	
d";
    schck(101,"abcd",c6,"linefeed notation No.8");


   header("gnu1.5.11",                    
          "linefeed notation");  

    return 0;

}
