

#include <stdio.h>
void test004() {
	printf("test0004 begin\n");
	long a0 = 0xffp-1l;
	printf("%ld\n", a0);
	printf("test0004 end\n\n");
	
	return ;
}
void test005() {
	printf("test0005 begin\n");
	unsigned int a0 = 0xffP+1l;
	printf("%ld\n", a0);
	printf("test0005 end\n\n");
	
	return ;
}
void test008() {
	printf("test0008 begin\n");
	unsigned long a0 = 0xffffP-1l;
	printf("%lu\n", a0);
	printf("test0008 end\n\n");
	
	return ;
}
int main() {
	test004();
	test005();
	test008();
	return 0;
}

