#include <string.h>
#include <stdio.h>


char *
my_bcopy(register char *from,register char *to,register unsigned long long len)
{
    char *retval = to;

    if (from - to >= 0) {
        while (len--)
            *to++ = *from++;
    }
    else {
        to += len;
        from += len;
        while (len--)
            *(--to) = *(--from);
    }
    return retval;
}

void print(char *p) {
  unsigned long long i;
  for(i=0LL;i<10LL;i++) {
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

