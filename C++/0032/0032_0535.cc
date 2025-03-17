#include <stdio.h>
int main(){
 int i = 0;
 const int &a=i+1;
 
 if (i?0:a)   
   printf("ok\n");
 else
   printf("ng = %d \n",a);
}
