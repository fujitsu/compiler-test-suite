#include <string.h>
#include <stdio.h>


void my_bcopy(char from[], char to[], short len) {
  short i;
  for (i=len-(short )1; i>=(short )0; i--) {
    to[i] = from[i];
  }
}

void print(char *p) {
  short i;
  for(i=0;i<(short )10;i++) {
    printf("%d ",*p++);
  }
  printf("\n");
}
int main()
{
   static const char input[10] = {1,2,3,4,5,6,7,8,9,10};
   char data[10];

   char *from;
   char *to;

   memcpy(data,input,10);
   print(data);
   memcpy(data,input,10);
   my_bcopy(&data[5],&data[0],5);
   print(data);
   memcpy(data,input,10);
   my_bcopy(&data[1],&data[0],5);
   print(data);
   memcpy(data,input,10);
   my_bcopy(&data[0],&data[5],5);
   print(data);
   memcpy(data,input,10);
   my_bcopy(&data[0],&data[1],5);
   print(data);
}

