#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <signal.h>
#include"004.h"

int compare_int(const void* a, const void* b);
int compare_float(const void* a, const void* b);

void __attribute__ ((nothrow)) testONE();
void test002() __attribute__ ((nothrow)) ;
int TESTTHREE() __attribute__ ((nothrow, warn_unused_result)) ;
void testfour() __attribute__ ((nothrow)) ;
int test005() __attribute__ ((nothrow, const)) ;
void __attribute__ ((nothrow)) testsix();
void __attribute__ ((nothrow)) TESTSEVEN();
int TestEight() __attribute__ ((nothrow, visibility("default"))) ;
void TestNine() __attribute__ ((nothrow)) ;
void TESTTEN() __attribute__ ((nothrow)) ;
void testeleven() __attribute__ ((nothrow, visibility("protected"))) ;
void __attribute__ ((nothrow)) test012();

void sigcatch(int sig) { 
}

int compare_test(const void *p_data1, const void *p_data2){
}

int compare_int(const void* a, const void* b) {
	return ( *(int*)a - *(int*)b );
}

int compare_float(const void* a, const void* b) {
	return ( *(float*)a - *(float*)b );
}

void testONE() {
	int array[] = {1, 2, 3, 4, 5};
	int target = 9;
	void* ret;
	printf("nothrow No.1\n");
	ret = bsearch(&target, array, sizeof(array), sizeof(int), compare_test);
}

void test002(){
	printf("nothrow No.2\n");
	raise(SIGUSR2);
}

int TESTTHREE(){
	int array[] = {1, 2, 3, 4, 5};
	int target = 9;
	void* ret;
	printf("nothrow No.3\n");
	ret = bsearch(&target, array, sizeof(array), sizeof(int), compare_test);
	return 0;
}

void testfour(){
	int array[] = {1, 2, 3, 4, 5};
	int target = 9;
	void* ret;
	printf("nothrow No.4\n");
	ret = bsearch(&target, array, sizeof(array), sizeof(int), compare_int);
}

int test005(){
	int array[] = {1, 5, 3, 2, 4};
	printf("nothrow No.5\n");
	qsort(array, 5, sizeof(int), compare_int);
	return 0;
}

void testsix(){
	printf("nothrow No.6\n");
	raise(SIGINT);
}

void TESTSEVEN(){
	float array[] = {1.0, 5.0, 3.0, 2.0, 4.0};
	printf("nothrow No.7\n");
	qsort(array, 5, sizeof(float), compare_int);
}

int TestEight(){
	int array[] = {1, 2, 3, 4, 5};
	int target = 9;
	void* ret;
	printf("nothrow No.8\n");
	ret = bsearch(&target, array, sizeof(array), sizeof(int), compare_int);
	return 0;
}

void TestNine(){
	int array[5] = {1,5,3,2,4};
	printf("nothrow No.9\n");
	qsort(array, 5, sizeof(int), compare_int);
}

void TESTTEN(){
	printf("nothrow No.10\n");
	raise(SIGUSR1);
}

void testeleven(){
	printf("nothrow No.11\n");
	raise(SIGFPE);
}

void test012(){
	printf("nothrow No.12\n");
	char a = 100;
	printf("nothrow No.12 result %d\n", a);
}

void test013(){
	printf("nothrow No.13\n");
}

void test014(){
	printf("nothrow No.14\n");
	__attribute__ ((nothrow))  char a;
}

int main() { 
	header("GNU nothrow","Gnu Attribute nothrow test");

	if (SIG_ERR == signal(SIGINT, sigcatch)) { 
		printf("failed to set signal handler.n"); 
		exit(1); 
	} 
	testONE();
	signal(SIGINT, SIG_IGN);
	signal(SIGUSR2, sigcatch);
	test002();
	signal(SIGUSR2, SIG_IGN);
	signal(SIGINT, sigcatch);
	int ret = TESTTHREE();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	testfour();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	printf("nothrow No.5\n");
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	testsix();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	TESTSEVEN();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	TestEight();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	TestNine();
	signal(SIGINT, SIG_IGN);
	signal(SIGUSR1, sigcatch);
	TESTTEN();
	signal(SIGUSR1, SIG_IGN);
	signal(SIGFPE, sigcatch);
	testeleven();
	signal(SIGFPE, SIG_IGN);
	signal(SIGINT, sigcatch);
	test012();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	test013();
	signal(SIGINT, SIG_IGN);
	signal(SIGINT, sigcatch);
	test014();
	signal(SIGINT, SIG_IGN);

	header("GNU nothrow","Gnu Attribute nothrow test");

	return 0; 
} 
