
#include <stdio.h>
#define NUM 123

int main(void) {
    int val = NUM;
    {	int *ptr = &val;
        if (*ptr!=NUM)     printf("ng1\n"); }

    {	int *ary[] = { &val };
        if (*ary[0]!=NUM)  printf("ng2\n"); }

    {	struct { int *ptr; } st = { &val };
        if (*st.ptr!=NUM)  printf("ng3\n"); }

    {	union { int *ptr; } uni = { &val };
        if (*uni.ptr!=NUM) printf("ng4\n"); }

    printf("Test end\n");

    return 0;
}
