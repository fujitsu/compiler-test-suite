#include <stdlib.h>
#include <math.h>

#include <stdio.h>
struct a{
	  signed long long int ll:8;
	unsigned long long int ull:8;
};
struct a ch[10];
int main()
 {
     void fff(), lll();

	fff();
	lll();

exit (0);
 } 

void fff()
 {
    void cal();
    long long int sum_ll=0, i=0,j=0;
    unsigned long long int sum_ull=0;
    
     	ch[9].ull=0xff;
	cal(ch);

	do{
	   sum_ll += ch[i].ll;
 	   i++;
	}while(i < 10);

	if(sum_ll == -10)	printf("(01) ok\n");
	else			printf("(01) ng\n");

	do{
	    sum_ull += ch[j].ull;
	    j++;
	}while(j < 10);

	if(sum_ull == 0x9f6)	printf("(02) ok\n");
	else			printf("(02) ng\n");
 }

void lll()
 {
    void cal(), result();
    long long int sum_ll=0, i=0, j=0;
    unsigned long long int sum_ull=0;

	ch[9].ull=0x01;
	cal(ch);

	do{
	    sum_ll += ch[i].ll;
	    i++;
	}while(i < 10);

	if(sum_ll == 10)	printf("(03) ok\n");
	else			printf("(03) ng\n");

	do{
	    sum_ull += ch[j].ull;
	    j++;
	}while(j < 10);

	if(sum_ull == 10)	printf("(04) ok\n");
	else			printf("(04) ng\n");

	result(sum_ll, sum_ull);
 }

void cal()
 {
	ch[0].ll =ch[1].ll =ch[2].ll =ch[3].ll =ch[4].ll =
 	ch[5].ll =ch[6].ll =ch[7].ll =ch[8].ll =ch[9].ll =     
	ch[0].ull=ch[1].ull=ch[2].ull=ch[3].ull=ch[4].ull=
	ch[5].ull=ch[6].ull=ch[7].ull=ch[8].ull=ch[9].ull;
 }

void result(a, b)
     long long int a;
     unsigned long long int b;
 {
	if(a != b)	printf("(05) ng\n");
	else		printf("(05) ok\n");
 }
