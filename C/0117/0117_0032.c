#include <stdio.h>
struct st {
  int a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15;
  int b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15;
};

void set_value(struct st *st1)
{
  st1->a1=1; st1->a2=1; st1->a3=1; st1->a4=1; st1->a5=1; st1->a6=1; st1->a7=1; st1->a8=1; st1->a9=1; st1->a10=1; st1->a11=1; st1->a12=1; st1->a13=1; st1->a14=1; st1->a15=1;
  st1->b1=0; st1->b2=0; st1->b3=0; st1->b4=0; st1->b5=0; st1->b6=0; st1->b7=0; st1->b8=0; st1->b9=0; st1->b10=0; st1->b11=0; st1->b12=0; st1->b13=0; st1->b14=0; st1->b15=0;
}
int main()
{
  struct st st1;
  int a,b,c,d,e,f,g;
  set_value(&st1);

  if(st1.a1 && !st1.b1)
    if(!st1.b2 && st1.a2 && st1.b3) ;
    else if(st1.a3 && st1.a4 && !st1.b4)
      if(!st1.a5 && st1.b5);
      else if(!st1.a6 && st1.a7 && st1.b6) 
	g=6;
      else if(st1.a8 && st1.a9 && !st1.b7)
	if(st1.a10 && !st1.b8 && !st1.b9)
	  if(!st1.b10 && !st1.b11 && !st1.b12){
	    if(!st1.b13 && !st1.b14 && st1.a11){
	      if(!st1.b15 && st1.a12 && !st1.a13) 
		f=1;
	      else
		a=1;b=2; c=3;
	    } else
	      f=4;
	  }
	  else
	    e=5;
  
  if(a==1 && b==2 && c==3)
    printf("ok\n");
  else
    printf("ng a=%d b=%d c=%d\n",a,b,c);  
}
