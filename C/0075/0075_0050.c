#include <stdio.h>
       int sub(int x)
       {
         unsigned long ul1;

         ul1 = x - 4096;          
         if (ul1 >= 0)            
                 puts("ok");
         else
                 puts("ng");
            
       }

       int add(int x)
       {
         unsigned long ul1;

         ul1 = x + 4096;          
         if (ul1 >= 0)            
                 puts("ok");
         else
                 puts("ng");
       }
int main()
       {
          sub(1);
          add(-4096);
        }

