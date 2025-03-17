#include <stdio.h>
void sub(unsigned int *uintp, unsigned short *ushortp){
   *uintp = 10;
   *ushortp = 5;
   *uintp = *uintp + 3;

   if(*uintp == 13 && *ushortp == 5){
     printf("memalias OK\n");
   }else{
     printf("Not memalias\n");
  }
}
int main(){
   unsigned int *uintp;
   unsigned short *ushortp;
   unsigned int uintwork[5] = {1,2,3,4,5};
   uintp = uintwork;
   ushortp = (unsigned short *)uintwork;

   sub(uintp,ushortp);
}
