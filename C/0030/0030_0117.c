#include <stdio.h>
typedef unsigned long size_t;

               size_t fsize3(int n)
{
                       char b[n+3];       
                       return sizeof b;   
		     }


               int main()
{
                       size_t size;
                       size = fsize3(10); 
			 printf("%d\n", size);
                       return 0;
		     }

