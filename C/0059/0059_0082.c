#include <stdio.h>
#include "000.h"

#define _MACRO15 "abc\ 
d";
#define _MACRO16 "abc\	 
d";
#define _MACRO17 "abc\	 
d";

int main()
{

   header("gnu1.5.11",           
          "linefeed notation");  


const char *c15 = _MACRO15;
    schck(101,"abcd",c15,"linefeed notation No.15");


const char *c16 = _MACRO16;
    schck(101,"abcd",c16,"linefeed notation No.16");


const char *c17 = _MACRO17;
    schck(101,"abcd",c17,"linefeed notation No.17");
    
const char *c1\	
8 = "abcd";
    schck(101,"abcd",c18,"linefeed notation No.18");

const char *c1\	
9 = "abcd";
    schck(101,"abcd",c19,"linefeed notation No.19");

const char *c2\	
0 = "abcd";
    schck(101,"abcd",c20,"linefeed notation No.20");


   header("gnu1.5.11",           
          "linefeed notation");  

    return 0;

}
