#include <stdio.h>

int main()
{
  char a[50];
  int  ar[50][20];

   printf("05 START    \n");
#if  __x86_64__ || __aarch64__
  if (sizeof(0,a) == 8)
#else
  if (sizeof(0,a) == 4)
#endif
   printf("05-1   OK \n");
  else
   if (sizeof(0,a) == 50)
     printf("05-1 V10,SYSV  OK \n");
  else
     printf("05-1 NG \n");

#if  __x86_64__ || __aarch64__
  if (sizeof(1,ar) == 8)
#else
  if (sizeof(1,ar) == 4)
#endif
   printf("05-2   OK \n");
  else
   if (sizeof(0,ar) == 4000)
     printf("05-2 V10,SYSV  OK \n");
  else
  {
     printf("05-2 NG \n");
     printf("SIZEOF = %d\n",sizeof(0,ar));
  }
   printf("05 END  \n");
}
