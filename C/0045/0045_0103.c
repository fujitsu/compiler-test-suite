 

#include <stdio.h>
#include <string.h>

signed char array[10];
const  char ans[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 } ;
int main()
{
   signed int i,j;
   unsigned int u = 1;
   j = 10;
   for(i=0;i<j;i+=u) {
     array[i] = i;
   }

   if (memcmp(array, ans, 10)==0) {
     printf("OK\n");
   }
   else {
     printf("NG\n");
   }
}

