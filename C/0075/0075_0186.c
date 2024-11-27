#include <stdio.h>

union {
FILE *fp;
FILE *fp_d;
} ar;

FILE *fp;
void
CO_PrintChar(bo)
        char * bo;
{
        fputs(bo,ar.fp);
        return ;
}
int main()
{
        ar.fp=fopen("./dummy.c","w+");
        CO_PrintChar("test is OK\n");
        fclose(ar.fp_d);
        remove("./dummy.c");
}
