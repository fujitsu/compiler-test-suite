#include <stdio.h>

typedef union {
      struct {
		long long int a:32;
		long long int b:32;
		long long int c:32;
		long long int d:32;
	     }g;
}t;
t mat[5];

void decla();
int main()
 {

	decla(mat);
 }

void decla(mat)
     t *mat;
 {
     void result();

	mat[0].g.a=mat[0].g.b=mat[0].g.c=mat[0].g.d=0x01;
	mat[1].g.a=mat[1].g.b=mat[1].g.c=mat[1].g.d=0x10;
	mat[2].g.a=mat[2].g.b=mat[2].g.c=mat[2].g.d=0x11; 
	mat[3].g.a=mat[3].g.b=mat[3].g.c=mat[3].g.d=0x0f; 	
	mat[4].g.a=mat[4].g.b=mat[4].g.c=mat[4].g.d=0x11111111; 

	result(mat);
 }

void result(mat)
     t *mat;
 {
     long long int sum[5],i;

	for(i=0; i<5; i++)
	  {
		sum[i] = mat[i].g.a + mat[i].g.b + mat[i].g.c + mat[i].g.d;

		switch(sum[i]/4){
 			case  0x01 : printf("(0) ok\n");
				     break;
			case  0x10 : printf("(1) ok\n");
				     break;
			case  0x11 : printf("(2) ok\n");
				     break;
			case  0x0f : printf("(3) ok\n");
   				     break;
			case  0x11111111 : printf("(4) ok\n");
				           break;
			default    : printf("(%d) ng\n",i);	
				     break;
    		}
	  }
 }
