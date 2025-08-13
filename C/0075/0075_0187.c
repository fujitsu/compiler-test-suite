#include <stdio.h>

void
CO_PrintChar(bo,fp)
        char * bo;
	FILE *fp;
{
        fputs(bo,fp);
        return ;
}
int main()
{
	FILE *fp;
        fp=fopen("./dummy3.c","w+");
        CO_PrintChar("test is OK\n",fp);
        fclose(fp);
	remove("./dummy3.c");
}
