#include <stdio.h>
#include <string.h>

signed char array[10];
const  char ans[10] = { 0,1,2,3,4,5,6,7,8,9 } ;
int main()
{
   signed char i,j;
   j = 10;
   for(i=0;i<j;i++) {
     array[i] = i;
   }

   if (memcmp(array, ans, 10) == 0) {
     printf("OK\n");
   }
   else {
     printf("NG\n");
   }
}
