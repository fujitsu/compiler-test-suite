#include <stdio.h>
int g() { return -1; }

void f1(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

#define TESTPATTERN1( dist, op1,oe1,c1, ope, op2,oe2,c2 ) \
         dist  = g() ; \
	if ( dist<0 ) { \
	    dist = (op1 oe1 c1 )ope( op2 oe2 c2 ) ; \
	    printf("%d",  dist ); \
	} \
	printf("%d",  dist );

	puts("--- Here f1! Test now! ---") ;

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

	return ;
}

void f2(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

#define TESTPATTERN2( dist, ope, op1,oe1,c1 ) \
         dist  = g() ; \
	if (  dist <0 ) { \
	     dist  ope ( op1 oe1 c1 ) ;\
	    printf("%d", (dist)); \
	} \
	printf("%d",  dist );

	puts("--- Here f2! Test now! ---") ;

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

	return ;
}

#define TESTPATTERN3( dist, aope, op1,oe1,c1, ope, op2,oe2,c2 ) \
        (dist) = g() ; \
	if (  dist <0 ) { \
	     dist  aope ( op1 oe1 c1 )ope( op2 oe2 c2 ) ; \
	    printf("%d",  dist ); \
	} \
	printf("%d",  dist );

void f3(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

	puts("--- Here f3! Test now! ---") ;

	TESTPATTERN3(i, &=, match,==,0, - , i,==,-1) ;
	TESTPATTERN3(i, &=, match,==,0, + , i,==,-1) ;
	TESTPATTERN3(i, &=, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN3(i, &=, match,==,0, & , i,!=,-1) ;
	TESTPATTERN3(i, &=, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN3(i, &=, 0,==,match, - , -1,==,i) ;
	TESTPATTERN3(i, &=, 0,==,match, + , -1,==,i) ;
	TESTPATTERN3(i, &=, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN3(i, &=, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN3(i, &=, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN3(i, &=, i,==,-1, - , match,==,0) ;
	TESTPATTERN3(i, &=, i,==,-1, + , match,==,0) ;
	TESTPATTERN3(i, &=, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN3(i, &=, i,!=,-1, & , match,==,0) ;
	TESTPATTERN3(i, &=, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN3(i, &=, -1,==,i, - , 0,==,match) ;
	TESTPATTERN3(i, &=, -1,==,i, + , 0,==,match) ;
	TESTPATTERN3(i, &=, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN3(i, &=, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN3(i, &=, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN3(i, &=, i,==,-1, - , i,==,0) ;
	TESTPATTERN3(i, &=, i,==,-1, + , i,==,1) ;
	TESTPATTERN3(i, &=, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN3(i, &=, i,!=,-1, & , i,==,0) ;
	TESTPATTERN3(i, &=, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN3(i, &=, -1,==,i, - , 0,==,i) ;
	TESTPATTERN3(i, &=, -1,==,i, + , 1,==,i) ;
	TESTPATTERN3(i, &=, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN3(i, &=, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN3(i, &=, -1,==,i, | , 1,==,i) ;
	printf("\n");

	return ;
}

void f4(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

	puts("--- Here f4! Test now! ---") ;

	TESTPATTERN3(i, ^=, match,==,0, - , i,==,-1) ;
	TESTPATTERN3(i, ^=, match,==,0, + , i,==,-1) ;
	TESTPATTERN3(i, ^=, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN3(i, ^=, match,==,0, & , i,!=,-1) ;
	TESTPATTERN3(i, ^=, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN3(i, ^=, 0,==,match, - , -1,==,i) ;
	TESTPATTERN3(i, ^=, 0,==,match, + , -1,==,i) ;
	TESTPATTERN3(i, ^=, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN3(i, ^=, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN3(i, ^=, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN3(i, ^=, i,==,-1, - , match,==,0) ;
	TESTPATTERN3(i, ^=, i,==,-1, + , match,==,0) ;
	TESTPATTERN3(i, ^=, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN3(i, ^=, i,!=,-1, & , match,==,0) ;
	TESTPATTERN3(i, ^=, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN3(i, ^=, -1,==,i, - , 0,==,match) ;
	TESTPATTERN3(i, ^=, -1,==,i, + , 0,==,match) ;
	TESTPATTERN3(i, ^=, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN3(i, ^=, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN3(i, ^=, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN3(i, ^=, i,==,-1, - , i,==,0) ;
	TESTPATTERN3(i, ^=, i,==,-1, + , i,==,1) ;
	TESTPATTERN3(i, ^=, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN3(i, ^=, i,!=,-1, & , i,==,0) ;
	TESTPATTERN3(i, ^=, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN3(i, ^=, -1,==,i, - , 0,==,i) ;
	TESTPATTERN3(i, ^=, -1,==,i, + , 1,==,i) ;
	TESTPATTERN3(i, ^=, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN3(i, ^=, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN3(i, ^=, -1,==,i, | , 1,==,i) ;
	printf("\n");
	
	return ;
}

void f5(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

	puts("--- Here f5! Test now! ---") ;

	TESTPATTERN3(i, |=, match,==,0, - , i,==,-1) ;
	TESTPATTERN3(i, |=, match,==,0, + , i,==,-1) ;
	TESTPATTERN3(i, |=, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN3(i, |=, match,==,0, & , i,!=,-1) ;
	TESTPATTERN3(i, |=, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN3(i, |=, 0,==,match, - , -1,==,i) ;
	TESTPATTERN3(i, |=, 0,==,match, + , -1,==,i) ;
	TESTPATTERN3(i, |=, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN3(i, |=, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN3(i, |=, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN3(i, |=, i,==,-1, - , match,==,0) ;
	TESTPATTERN3(i, |=, i,==,-1, + , match,==,0) ;
	TESTPATTERN3(i, |=, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN3(i, |=, i,!=,-1, & , match,==,0) ;
	TESTPATTERN3(i, |=, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN3(i, |=, -1,==,i, - , 0,==,match) ;
	TESTPATTERN3(i, |=, -1,==,i, + , 0,==,match) ;
	TESTPATTERN3(i, |=, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN3(i, |=, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN3(i, |=, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN3(i, |=, i,==,-1, - , i,==,0) ;
	TESTPATTERN3(i, |=, i,==,-1, + , i,==,1) ;
	TESTPATTERN3(i, |=, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN3(i, |=, i,!=,-1, & , i,==,0) ;
	TESTPATTERN3(i, |=, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN3(i, |=, -1,==,i, - , 0,==,i) ;
	TESTPATTERN3(i, |=, -1,==,i, + , 1,==,i) ;
	TESTPATTERN3(i, |=, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN3(i, |=, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN3(i, |=, -1,==,i, | , 1,==,i) ;
	printf("\n");
	
	return ;
}

void f6(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

	puts("--- Here f6! Test now! ---") ;

	TESTPATTERN3(i, +=, match,==,0, - , i,==,-1) ;
	TESTPATTERN3(i, +=, match,==,0, + , i,==,-1) ;
	TESTPATTERN3(i, +=, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN3(i, +=, match,==,0, & , i,!=,-1) ;
	TESTPATTERN3(i, +=, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN3(i, +=, 0,==,match, - , -1,==,i) ;
	TESTPATTERN3(i, +=, 0,==,match, + , -1,==,i) ;
	TESTPATTERN3(i, +=, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN3(i, +=, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN3(i, +=, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN3(i, +=, i,==,-1, - , match,==,0) ;
	TESTPATTERN3(i, +=, i,==,-1, + , match,==,0) ;
	TESTPATTERN3(i, +=, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN3(i, +=, i,!=,-1, & , match,==,0) ;
	TESTPATTERN3(i, +=, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN3(i, +=, -1,==,i, - , 0,==,match) ;
	TESTPATTERN3(i, +=, -1,==,i, + , 0,==,match) ;
	TESTPATTERN3(i, +=, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN3(i, +=, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN3(i, +=, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN3(i, +=, i,==,-1, - , i,==,0) ;
	TESTPATTERN3(i, +=, i,==,-1, + , i,==,1) ;
	TESTPATTERN3(i, +=, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN3(i, +=, i,!=,-1, & , i,==,0) ;
	TESTPATTERN3(i, +=, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN3(i, +=, -1,==,i, - , 0,==,i) ;
	TESTPATTERN3(i, +=, -1,==,i, + , 1,==,i) ;
	TESTPATTERN3(i, +=, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN3(i, +=, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN3(i, +=, -1,==,i, | , 1,==,i) ;
	printf("\n");
	
	return ;
}

void f7(int *p)
{       int i,j;
        int match = 1;
        if (*p) match = 0;

	puts("--- Here f7! Test now! ---") ;

	TESTPATTERN3(i, -=, match,==,0, - , i,==,-1) ;
	TESTPATTERN3(i, -=, match,==,0, + , i,==,-1) ;
	TESTPATTERN3(i, -=, match,==,0, ^ , i,==,-1) ;
	TESTPATTERN3(i, -=, match,==,0, & , i,!=,-1) ;
	TESTPATTERN3(i, -=, match,==,1, | , i,==,-1) ;
	printf(" ");
	TESTPATTERN3(i, -=, 0,==,match, - , -1,==,i) ;
	TESTPATTERN3(i, -=, 0,==,match, + , -1,==,i) ;
	TESTPATTERN3(i, -=, 0,==,match, ^ , -1,==,i) ;
	TESTPATTERN3(i, -=, 0,==,match, & , -1,!=,i) ;
	TESTPATTERN3(i, -=, 1,==,match, | , -1,==,i) ;
	printf("\n");

	TESTPATTERN3(i, -=, i,==,-1, - , match,==,0) ;
	TESTPATTERN3(i, -=, i,==,-1, + , match,==,0) ;
	TESTPATTERN3(i, -=, i,==,-1, ^ , match,==,0) ;
	TESTPATTERN3(i, -=, i,!=,-1, & , match,==,0) ;
	TESTPATTERN3(i, -=, i,==,-1, | , match,==,1) ;
	printf(" ");
	TESTPATTERN3(i, -=, -1,==,i, - , 0,==,match) ;
	TESTPATTERN3(i, -=, -1,==,i, + , 0,==,match) ;
	TESTPATTERN3(i, -=, -1,==,i, ^ , 0,==,match) ;
	TESTPATTERN3(i, -=, -1,!=,i, & , 0,==,match) ;
	TESTPATTERN3(i, -=, -1,==,i, | , 1,==,match) ;
	printf("\n");

	TESTPATTERN3(i, -=, i,==,-1, - , i,==,0) ;
	TESTPATTERN3(i, -=, i,==,-1, + , i,==,1) ;
	TESTPATTERN3(i, -=, i,==,-1, ^ , i,==,1) ;
	TESTPATTERN3(i, -=, i,!=,-1, & , i,==,0) ;
	TESTPATTERN3(i, -=, i,==,-1, | , i,==,1) ;
	printf(" ");
	TESTPATTERN3(i, -=, -1,==,i, - , 0,==,i) ;
	TESTPATTERN3(i, -=, -1,==,i, + , 1,==,i) ;
	TESTPATTERN3(i, -=, -1,==,i, ^ , 1,==,i) ;
	TESTPATTERN3(i, -=, -1,!=,i, & , 0,==,i) ;
	TESTPATTERN3(i, -=, -1,==,i, | , 1,==,i) ;
	printf("\n");
	
	return ;
}
int main()
{
  int i = -1;
  int *p = &i;
  f1(p);
  f2(p);
  f3(p);
  f4(p);
  f5(p);
  f6(p);
  f7(p);
}
