#include<stdio.h>
int main()
{

   volatile const signed long     *addrsl1,*addrsl2;
   volatile const unsigned long   *addrul1,*addrul2;
   volatile const signed short    *addrss1,*addrss2;
   volatile const unsigned short  *addrus1,*addrus2;
   volatile const signed int      *addrsi1,*addrsi2;
   volatile const unsigned int    *addrui1,*addrui2;
   volatile const signed char     *addrsc1,*addrsc2,*addrsc3;
   volatile const unsigned char   *addruc1,*addruc2,*addruc3;

   volatile const signed long    a1;
   volatile const long unsigned  a2,b2;
   volatile const signed short   a3=-1,b3;
   volatile const int unsigned   a5;
   volatile const signed int     b6=8;
   volatile const char unsigned  a7,b7,c7;
   volatile const signed char    a8,b8=1;


   printf("START \n");

   addrsl1 = &a1;
   if (a1!=*addrsl1)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   addrul1 = &a2;  addrul2 = &b2;
   if (a2!=*addrul1 || b2!=*addrul2)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   addrss1 = &b3;
   if (a3!=-1 || b3!=*addrss1)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   addrui1 = &a5;
   if (a5!=*addrui1)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   if (b6!=8)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   addruc1 = &a7;  addruc2 = &b7;  addruc3 = &c7;
   if (a7!=*addruc1 || b7!=*addruc2 || c7!=*addruc3)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   addrsc1 = &a8;
   if (a8!=*addrsc1 || b8!=1)
       printf(" ERROR \n");
   else
       printf(" OK \n");

   printf("END \n");
}
