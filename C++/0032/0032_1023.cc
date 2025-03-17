

#include <stdio.h>

int f_104p53(char c) { return c - 1; }
int f_104p53(int i) { return i + 1; }
int f_104p53(long L) { return 2 * int(L); }
int main()
{
	int f_104p53(char);
	int f_104p53(int);

	if(f_104p53('c') == 'c' - 1)
            printf("ok\n");
        else
            printf("ng f_104p53('c') : %d \n", f_104p53('c'));
}
