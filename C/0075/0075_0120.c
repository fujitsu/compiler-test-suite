#include <stdio.h>
int sub(int base);
int main()
{
	printf("%d\n",sub(2));
}

int sub(base)
int base;
{
	switch(base) {
	    case 1:
		return 1;
	    case 2:
		sub(1);
	}
	return 2;
}	
