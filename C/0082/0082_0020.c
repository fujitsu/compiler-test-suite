#include <string.h>
#include <stdio.h>


char *
my_bcopy(register char *from,register char *to,register int len)
{
  int i;
  for( i = len ; i != 0 ; i-- ) {
    to[i] = from[i] ;
  }
  return to;
}

void print(char *p) {
  int i;
  for(i=0;i<10;i++) {
    printf("%d ",*p++);
  }
  printf("\n");
}
int main()
{
   static const char input[11] = {1,2,3,4,5,6,7,8,9,10,11};
   char data[11];

   memcpy(data,input,11);
   print(data);
   memcpy(data,input,11);
   my_bcopy(&data[5],&data[0],5);
   print(data);
   memcpy(data,input,11);
   my_bcopy(&data[1],&data[0],5);
   print(data);
   memcpy(data,input,11);
   my_bcopy(&data[0],&data[5],5);
   print(data);
   memcpy(data,input,11);
   my_bcopy(&data[0],&data[1],5);
   print(data);
}

