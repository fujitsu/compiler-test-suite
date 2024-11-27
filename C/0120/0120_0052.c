#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int ch;
	ch=8;
	switch (ch)
	{
	case 0 :
	case 2 :
	case 4 :
	case 6 :
	case 8 :
		printf ("even\n");
		break;
	case 1 :
	case 3 :
	case 5 :
	case 7 :
	case 9 :
		printf ("odd\n");
		break;
	default:
		break;
	}
	exit (0);
}
