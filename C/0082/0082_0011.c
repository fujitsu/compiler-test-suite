#include <string.h>
#include <stdio.h>


char to[10];
char from[10]  = {'a','b','c','d','e','f','g','h','i','j'};
char input[10] = {'1','2','3','4','5','6','7','8','9','0'};

char *
my_bcopy50(register long long len)
{
  long long i;
  for( i = 0 ; i < len ; i++ ) {
    to[5+i] = from[i] ;
  }
  return to;
}

char *
my_bcopy15(register long long len)
{
  long long i;
  for( i = 0 ; i < len ; i++ ) {
    to[1+i] = from[5+i] ;
  }
  return to;
}

char *
my_bcopy05(register long long len)
{
  long long i;
  for( i = 0 ; i < len ; i++ ) {
    to[i] = from[5+i] ;
  }
  return to;
}

char *
my_bcopy01(register long long len)
{
  long long i;
  for( i = 0 ; i < len ; i++ ) {
    to[i] = from[1+i] ;
  }
  return to;
}

void print(char *p) {
  long long i;
  for(i=0;i<10;i++) {
    printf("%c ",*p++);
  }
  printf("\n");
}
int main()
{
   char *data = to;

   memcpy(data,input,10);
   print(data);
   memcpy(data,input,10);
   my_bcopy50(5);
   print(data);
   memcpy(data,input,10);
   my_bcopy15(5);
   print(data);
   memcpy(data,input,10);
   my_bcopy05(5);
   print(data);
   memcpy(data,input,10);
   my_bcopy01(5);
   print(data);
}

