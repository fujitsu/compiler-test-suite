#include <stdio.h>
int g() { return -1; }

int f(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

#define TESTPATTERN1( dist, op1,oe1,c1, ope, op2,oe2,c2 ) \
        (dist) = g() ; \
	if ( (dist)<0 ) { \
	    (dist) = ((op1)oe1(c1))ope((op2)oe2(c2)) ; \
	    printf("%d", (dist)); \
	}

	TESTPATTERN1(i, match,==,0, - , i,==,-1) ;
	TESTPATTERN1(i, match,==,0, + , i,==,-1) ;
	TESTPATTERN1(i, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN1(i, match,==,0, & , i,!=,-1) ;
	TESTPATTERN1(i, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN1(i, 0,==,match, - , -1,==,i) ;
	TESTPATTERN1(i, 0,==,match, + , -1,==,i) ;
	TESTPATTERN1(i, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN1(i, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN1(i, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN1(i, i,==,-1, - , match,==,0) ;
	TESTPATTERN1(i, i,==,-1, + , match,==,0) ;
	TESTPATTERN1(i, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN1(i, i,!=,-1, & , match,==,0) ;
	TESTPATTERN1(i, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN1(i, -1,==,i, - , 0,==,match) ;
	TESTPATTERN1(i, -1,==,i, + , 0,==,match) ;
	TESTPATTERN1(i, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN1(i, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN1(i, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN1(i, i,==,-1, - , i,==,0) ;
	TESTPATTERN1(i, i,==,-1, + , i,==,1) ;
	TESTPATTERN1(i, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN1(i, i,!=,-1, & , i,==,0) ;
	TESTPATTERN1(i, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN1(i, -1,==,i, - , 0,==,i) ;
	TESTPATTERN1(i, -1,==,i, + , 1,==,i) ;
	TESTPATTERN1(i, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN1(i, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN1(i, -1,==,i, | , 1,==,i) ;
	printf("\n");

#define TESTPATTERN2( dist, ope, op1,oe1,c1 ) \
        (dist) = g() ; \
	if ( (dist)<0 ) { \
	    (dist) ope ((op1)oe1(c1)) ;\
	    printf("%d", (dist)); \
	}

	TESTPATTERN2(i, +=, i,==,-1) ;
	TESTPATTERN2(i, -=, i,==,-1) ;
	TESTPATTERN2(i, ^=, i,==,-1) ;
	TESTPATTERN2(i, &=, i,==,-1) ;
	TESTPATTERN2(i, |=, i,==,-1) ;
	printf(" ");
	TESTPATTERN2(i, +=, -1,==,i) ;
	TESTPATTERN2(i, -=, -1,==,i) ;
	TESTPATTERN2(i, ^=, -1,==,i) ;
	TESTPATTERN2(i, &=, -1,==,i) ;
	TESTPATTERN2(i, |=, -1,==,i) ;
	printf("\n");

	TESTPATTERN2(i, +=, i,==,0) ;
	TESTPATTERN2(i, -=, i,==,0) ;
	TESTPATTERN2(i, ^=, i,==,0) ;
	TESTPATTERN2(i, &=, i,==,0) ; 
	TESTPATTERN2(i, |=, i,==,0) ;
	printf(" ");
	TESTPATTERN2(i, +=, 0,==,i) ;
	TESTPATTERN2(i, -=, 0,==,i) ;
	TESTPATTERN2(i, ^=, 0,==,i) ;
	TESTPATTERN2(i, &=, 0,==,i) ; 
	TESTPATTERN2(i, |=, 0,==,i) ;
	printf("\n");

	TESTPATTERN2(i, +=, i,==,1) ;
	TESTPATTERN2(i, -=, i,==,1) ;
	TESTPATTERN2(i, ^=, i,==,1) ;
	TESTPATTERN2(i, &=, i,==,1) ; 
	TESTPATTERN2(i, |=, i,==,1) ;
	printf(" ");
	TESTPATTERN2(i, +=, 1,==,i) ;
	TESTPATTERN2(i, -=, 1,==,i) ;
	TESTPATTERN2(i, ^=, 1,==,i) ;
	TESTPATTERN2(i, &=, 1,==,i) ; 
	TESTPATTERN2(i, |=, 1,==,i) ;
	printf("\n");
}
int main()
{
  int i = -1;
  int *p = &i;
  f(p);
}
