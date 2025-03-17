#include <string.h>
#include <stdio.h>
struct  _S {
	int 	s1;
	char  	s2[5];

	struct  _S1{
		long	s11;
	}substruct;
};

int main(void)
{
	class myclass {
		int 	c;
	public:
		int	c1;
		class 	subclass {
			char 	c11[5];
		public:
			subclass(void) { strcpy(c11, "class"); }
		};
		myclass(void) { c = 10;}
	};

	myclass obj;
	myclass::subclass obj1;
	obj.c1 = 20;

	struct _S mystruct;
	mystruct.s1 = 5;
	strcpy(mystruct.s2, "rambo");
	mystruct.substruct.s11 = 11;

	printf("[Result = Good!]\n");
}

