#include <stdio.h>

FILE *fp;
void
CO_PrintChar(bo)
        char * bo;
{
        fputs(bo,fp);
	return ;
}
int main()
{
	fp=fopen("./dummy.c","w+");
	CO_PrintChar("test is OK\n");
	fclose(fp);
	remove("./dummy.c");
}
