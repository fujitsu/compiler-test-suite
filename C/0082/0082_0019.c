#include <string.h>
#include <stdio.h>


unsigned long long num;
char *from;
char *to;

int my_bcopy() {
  unsigned long long row;
  for( row = 0 ; row <= num + 1 ; row++ ) {
    to[row] = from[row] ;
  }
}

void print(char *p) {
  unsigned long long i;
  for(i=0;i<10;i++) {
    printf("%d ",*p++);
  }
  printf("\n");
}
int main()
{
   static const char input[10] = {1,2,3,4,5,6,7,8,9,10};
   char data[10];

   from = to = data;

   memcpy(data,input,10);
   print(data);
   memcpy(data,input,10);
   num = 3;
   from = &data[0];
   to   = &data[5];
   my_bcopy();
   print(data);
   memcpy(data,input,10);
   num = 3;
   from = &data[0];
   to   = &data[1];
   my_bcopy();
   print(data);
   memcpy(data,input,10);
   num = 3;
   from = &data[5];
   to   = &data[0];
   my_bcopy();
   print(data);
   memcpy(data,input,10);
   num = 3;
   from = &data[1];
   to   = &data[0];
   my_bcopy();
   print(data);
}

