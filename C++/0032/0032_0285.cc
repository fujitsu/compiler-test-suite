#include <stdio.h>
typedef unsigned char U1;
struct bf {
  U1  a:1;
} bf = { 1 };
int main(void)
{
    if (bf.a != 1) printf("NG\n");
    else           printf("OK\n");
}
