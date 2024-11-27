#include <stdio.h>
int shif_r_ull();
int shif_r_ll();
int shif_l_ull();
int shif_l_ll();
int sub_ull();
int sub_ll();

long long int  xxx;
long long int  a,b,c; 

long long int x(long long int i){ return i;}
void y(long long int i){ xxx=i;}
void z(long long int *i){ 
	if(xxx==*i)	printf(" ok\n");
	else		printf(" ng\n");
}
int main()
{
	sub_ll();
	sub_ull();
	shif_l_ll();
	shif_l_ull();
	shif_r_ll();
	shif_r_ull();
}

int sub_ll()
 {
   long long int a=0,b=x(101),c=x(102);
   long long int aa;

  	y(a=b-c);
   	aa=a;
   	z(&aa);
 }
int sub_ull()
 {
   unsigned long long int a=0,b=x(101),c=x(102);
   long long int aa;

	y(a=b-c);
	aa=a;
	z(&aa);
 }
int shif_l_ll()
 {
   long long int a=0,b=x(0x101),c=x(4);
   long long int aa;
	
	y(a=b<<c);
	if(a==0x1010)	printf(" ok\n");
	else		printf(" ng\n");
	aa=a;
	z(&aa);
 }
int shif_l_ull()
 {
   unsigned long long int a=0,b=x(0x101),c=x(32);
   long long int aa;

	y(a=b<<c);
	if(a==0x10100000000)	printf(" ok\n");
	else			printf(" ng\n");
	aa=a;
	z(&aa);
 }
int shif_r_ll()
 {
    long long int a=0,b=x(0x101),c=x(4);
    long long int aa;

	y(a=b>>c);
	if(a==0x10) 	printf(" ok\n");
	else		printf(" ng\n");
	aa=a;
	z(&aa);
 }
int shif_r_ull()
 {
    unsigned long long int a=0,b=x(0x010100000000),c=x(32);
    long long int aa;

	y(a=b>>c);
	if(a==0x101)	printf(" ok\n");
	else		printf(" ng\n");
	aa=a;
	z(&aa);
 }
