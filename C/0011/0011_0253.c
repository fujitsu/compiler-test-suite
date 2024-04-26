#include <stdio.h>

int g=0,data=1;
struct t { char a[1000]; } str1,str2,str3;
int main()
{
       struct tag {
         unsigned int bit1:1;
         unsigned int bit2:1;
         unsigned int bit3:1;
       } bit;
       int data2;

       str1 = str2;   
       str3 = str2;   
       data2 = 0;
       bit.bit1 = g+1;
       if( bit.bit1 == 1 || data == 0 ) {
         data2 = data;
       }
       else {
         bit.bit1 = 0;
       }
       if( data2 == 1 ) printf(" OK \n");
       else             printf(" NG \n");
}
