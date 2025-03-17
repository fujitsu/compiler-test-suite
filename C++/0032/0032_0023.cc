#include <stdio.h>

#define I4_CON 1073741824
#define U4_CON 2147483648
#define I8_CON 0x4000000000000000
#define U8_CON 0x8000000000000000
int main()
{
    long long int shlli;
    long int      li;
    unsigned long int      uli;
    int ok=0;


    li = 1;
    shlli = sizeof(li) * 8 - 2;
    li = li << shlli;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shlli error. :%d, %lld \n", li,shlli );
    }
    else
      ok ++;

    uli = 1;
    shlli = sizeof(uli) * 8 - 1;
    uli = uli << shlli;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shlli error. :%d,%lld \n", uli ,shlli);
    }
    else
      ok ++;

    if (ok == 2)
      printf("ok\n");
    else
      printf("ng\n");


}


