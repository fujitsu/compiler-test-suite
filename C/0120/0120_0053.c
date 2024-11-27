#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	char opr;
	int op1,op2;
	opr='*';
	op1=10;
	op2=5;
	switch(opr)
	{
	case '+' :
		printf("%d\n",op1+op2);
		break;
	case '-' :
		printf("%d\n",op1-op2);
		break;
	case '*' :
		printf("%d\n",op1*op2);
		break;
	case '/' :
		printf("%d\n",op1/op2);
		break;
	default :
		printf("operator error\n");
		break;
	}
	exit (0);
}
