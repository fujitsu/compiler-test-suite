#include <stdio.h>

static void scheck(int line, int value);
int Side;





int main()
	{
	int zero = 0;
	int one = 1;
	char *Filename;

	Filename = "c33b.c";
	Side = 0;
	scheck(__LINE__, ++Side || zero); 
	scheck(__LINE__, ++Side || one); 
} 

static void scheck(int line, int value)
{
  printf("line = %d\n", line);
  printf("value = %d\n", value);
}


