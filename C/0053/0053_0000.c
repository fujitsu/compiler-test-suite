#include<stdio.h>
int main()
{
    printf("***  TEST FOR E_AINIEX *** STARTED ***\n");

     {
     int   ia = { 1 };
     if(ia == 1)
         printf("*** -01 *** O   K ***\n");
     else
         printf("*** -01 ***  ERR  ***\n");
     }
     {
     static int   ib[] = { { 2147483647 } };
     if(ib[0] == 2147483647)
         printf("*** -02 *** O   K ***\n");
     else
         printf("*** -02 ***  ERR  ***\n");
     }
     {
     static int   ic[][1] = { { {255} } };
     if(ic[0][0] == 255)
         printf("*** -03 *** O   K ***\n");
     else
         printf("*** -03 ***  ERR  ***\n");
     }
     {
     enum tag1 { ena,enb,enc } en1;

     int   id = {  ena  };
     if(id == ena)
         printf("*** -04 *** O   K ***\n");
     else
         printf("*** -04 ***  ERR  ***\n");
     }
     {
     enum tag2 { ena,enb,enc } en2;

     static int   ie[] = { { enb } };
     if(ie[0] == enb)
         printf("*** -05 *** O   K ***\n");
     else
         printf("*** -05 ***  ERR  ***\n");
     }
     {
     enum tag3 { ena,enb,enc } en3;

     static int   ig[][1][1][1][1][1]
                       = { { { { { { { enc } } } } } } };
     if(ig[0][0][0][0][0][0] == enc)
         printf("*** -06 *** O   K ***\n");
     else
         printf("*** -06 ***  ERR  ***\n");
     }
     {
     static int   ih[]  = { 1,11 };
     if(ih[0]  ==  1)
         printf("*** -07 *** O   K ***\n");
     else
         printf("*** -07 ***  ERR  ***\n");
     }
     {
     static int   ii[][1]  = { {1},{11},{111} };
     if(ii[1][0]  == 11)
         printf("*** -08 *** O   K ***\n");
     else
         printf("*** -08 ***  ERR  ***\n");
     }
     {
     static int ij[][4]= { { {1},{11},{111},{1111} } };
     if(ij[0][3]  == 1111)
         printf("*** -09 *** O   K ***\n");
     else
         printf("*** -09 ***  ERR  ***\n");
     }
     {
     enum tag4 { ena,enb,enc } en4;

     static int   ik[] = {  ena,enb  };
     if(ik[0] == ena)
         printf("*** -10 *** O   K ***\n");
     else
         printf("*** -10 ***  ERR  ***\n");
     }
     {
     enum tag5 { ena,enb,enc } en5;

     static int   ie[][3] = { { ena,enc,enb } };
     if(ie[0][2] == enb)
         printf("*** -11 *** O   K ***\n");
     else
         printf("*** -11 ***  ERR  ***\n");
     }
     {
     enum tag6 { ena,enb,enc } en6;

     static int   ig[][1][1][1][1][3]
      =  { { { { { { {ena},{enb},{enc} } } } } } };
     if(ig[0][0][0][0][0][2] == enc)
         printf("*** -12 *** O   K ***\n");
     else
         printf("*** -12 ***  ERR  ***\n");
     }
    printf("***  TEST FOR E_AINIEX *** ENDED ***\n");
}
