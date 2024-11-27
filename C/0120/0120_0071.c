#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{


	struct tag {
		char name[20];
		int age;
		char sex;
		int security;
	};
	static struct tag mydata = {
			      "unknown name",99,'m',800                         	};
	printf("%s ",mydata.name);
	printf("%d ",mydata.age);
	printf("%c ",mydata.sex);
	printf("%d\n",mydata.security);
	exit (0);
}
