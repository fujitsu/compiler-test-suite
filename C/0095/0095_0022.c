#include <stdio.h>

long long int mat[3][5]= {
    	{0x01, 0x02, 0x03, 0x04, 0x05},
	{0x06, 0x07, 0x08, 0x09, 0x0a},
	{0x0b, 0x0c, 0x0d, 0x0e, 0x0f}
 };
void result();
int main()
 {
    long long int sum=0,aaa,i,j;

     	for(i=0; i<3; i++)
	    for(j=0; j<5; j++)
 	    	sum=sum+mat[i][j];
 	result(sum);

	aaa=sum;

	for(i=0; i<3; i++)
 	    for(j=0; j<5; j++)
	   	 sum=sum+mat[i][j];

	if(sum==aaa*2)	printf("(02) ok\n");
	else		printf("(02) ng %x\n",sum);
 }

void result(rr)
    long long int rr;
 {
    	if(rr==0x78)	printf("(01) ok\n");
	else		printf("(01) ng %x\n",rr);
 }
