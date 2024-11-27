#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int a3_print (int *a3);
int a2_print (int *a2);
int a1_print (int a1[]);
int max (int a, int b);
int sub3 (int *a1, int *a2, int *a3, int n);
int sub2 (int *a1, int *a2, int *a3, int *b1, int *b2, int *b3, int n);
int sub1 (int a1[5], int a2[5][5], int a3[5][5][5], int n);

int main()
{
	int i,j,k;
	int a1[5];
	int a2[5][5];
	int a3[5][5][5];
	
	for(i=0;i<5;i++){
		a1[i]=1;
		for(j=0;j<5;j++){
			a2[j][i]=2;
			for(k=0;k<5;k++){
				a3[k][j][i]=3;
			}
		}
	}
	a1_print(a1); 
	a2_print(a2); 
	a3_print(a3);
	sub1(a1,a2,a3,1);
	sub2(a1,a2,a3,&a1[4],&a2[4][4],&a3[4][4][4],1);
	sub3(a1,a2,a3,1);
	exit (0);
}
int sub1 (int a1[5], int a2[5][5], int a3[5][5][5], int n)
{
	int  i,j,k;
	int  *s_a1,*s_a2,*s_a3;
	s_a1=&a1[0]; 
	s_a2=&a2[0][0]; 
	s_a3=&a3[0][0][0];
	
	
	for(i=0;i<5;i++){
		a1[i]=a1[i]+2;
		for(j=0;j<5;j++){
			a2[j][i]=a2[j][i]+3;
			for(k=0;k<5;k++){
				a3[k][j][i]=a3[k][j][i]+4;
			}
		}
	}
	a1_print(s_a1); 
	a2_print(s_a2); 
	a3_print(s_a3);
}
int sub2 (int *a1, int *a2, int *a3, int *b1, int *b2, int *b3, int n)
{
	int  i,j,k;
	int  *s_a1,*s_a2,*s_a3,*s_b1,*s_b2,*s_b3;
	s_a1=a1; 
	s_a2=a2; 
	s_a3=a3; 
	s_b1=b1; 
	s_b2=b2; 
	s_b3=b3;
	
	
	for(i=0;i<5;i++){
		*a1=*a1+3;
		for(j=0;j<5;j++){
			*a2=*a2+4;
			for(k=0;k<5;k++){
				*a3=*a3+5;
			}
		}
	}
	a1_print(s_a1); 
	a2_print(s_a2); 
	a3_print(s_a3);
	
	
	for(i=0;i<5;i++){
		*a1=*a1+4;
		for(j=0;j<5;j++){
			*a2=*a2+5;
			for(k=0;k<5;k++){
				*a3=*a3+6;
				a3=a3+n;
			}
			a2=n+a2;
		}
		a1=a1+1;
	}
	a1_print(s_a1); 
	a2_print(s_a2); 
	a3_print(s_a3);
	
	
	for(i=0;i<5;i++){
		*b1=*b1+5;
		for(j=0;j<5;j++){
			*b2=*b2+6;
			for(k=0;k<5;k++){
				*b3=*b3+7;
				b3=b3-1;
			}
			b2=b2-1;
		}
		b1=b1-n;
	}
	a1_print(s_a1); 
	a2_print(s_a2); 
	a3_print(s_a3);
}
int sub3 (int *a1, int *a2, int *a3, int n)
{
	int  i,j,k;
	int  *s_a1,*s_a2,*s_a3;
	s_a1=a1; 
	s_a2=a2; 
	s_a3=a3;
	
	
	for(i=0;i<5;i++){
		*a1 = max(*a1,6);
		for(j=0;j<5;j++){
			*a2 = max(*a2,7);
			for(k=0;k<5;k++){
				*a3 = max(*a3,8);
				a3=a3+1;
			}
			a2=n+a2;
		}
		a1=a1+n;
	}
	a1_print(s_a1); 
	a2_print(s_a2); 
	a3_print(s_a3);
}
int 
max (int a, int b)
{
	if(a>b) return(a) ;
	else return(b) ;
}
int 
a1_print (int a1[])
{
	int  i,j,k;
	printf("a1=%d %d %d %d %d \n",a1[0],a1[1],a1[2],a1[3],a1[4]);
}
int a2_print (int *a2)
{
	int  i,j,k;
	printf("a2=");
	for(i=0;i<25;i++){
		printf("%d ",a2[i]);
	}
	printf("\n");
}
int a3_print (int *a3)
{
	int  i,j,k;
	printf("a3=");
	for(i=0;i<5;i++){
		for(j=0;j<25;j++){
			printf("%d ",a3[i+j]);
		}
		printf("\n");
		printf("   ");
	}
	printf("\n");
}
