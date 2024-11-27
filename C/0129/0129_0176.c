#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
 {
 	union t{
 		unsigned long long int a:8;  
 		unsigned long long int b:8;
 		  signed long long int c:8;  
 		  signed long long int d:8;  
 		};

	union t  s;
	union t  *y;
	union t  w[3];
	int      i;
	unsigned long long int a,b;
	  signed long long int c,d;
	
	s.a=0x00UL;
	a=s.a;
	s.b=0x11UL;
	b=s.b;
	s.c=0x01LL;
	c=s.c;
	s.d=0xffLL;
	d=s.d;

	if(a==0 && b==17 && c==1 && d==-1) 
			printf("(01) ok\n");
	else		printf("(01) ng\n");


	y=&s;
	y->a=0x00UL;
	a=y->a;
	y->b=0x11UL;
	b=y->b;
	y->c=0x01LL;
	c=y->c;
	y->d=0xffLL;
	d=y->d;

	if(a==0 && b==17 && c==1 && d==-1)
			printf("(02) ok\n");
	else		printf("(02) ng\n");


	i=0;
	while(i < 3){
              w[i].a=0x00UL+(long long)i;
	      i++;
	}
		
	   if(w[0].a==0 && w[1].a==1 && w[2].a==2)
			printf("(03) ok\n");
	   else		printf("(03) ng\n");


	i=0;
	while(i < 3){
              w[i].b=0x11UL+(long long)i;
	      i++;
	}

	   if(w[0].b==17 && w[1].b==18 && w[2].b==19)
			printf("(04) ok\n");
	   else		printf("(04) ng\n");


	i=0;
	while(i < 3){
              w[i].c=0x01LL+(long long)i;
	      i++;
	}

	   if(w[0].c==1 && w[1].c==2 && w[2].c==3)
			printf("(05) ok\n");
	   else		printf("(05) ng\n");


	i=0;
	while(i < 3){
              w[i].d=0xffLL+(long long)i;
	      i++;
	}

	   if(w[0].d==-1 && w[1].d==0 && w[2].d==1)
			printf("(06) ok\n");
	   else		printf("(06) ng\n");
					
exit (0);
 }
