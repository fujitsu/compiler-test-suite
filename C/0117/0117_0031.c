#include <stdio.h>
struct st {
  int a,b,c,d,e,f,g,h,i,j,k,l,m,n;
};

void set_value(struct st *st1)
{
  st1->a=1; st1->b=2; st1->c=3; st1->d=4; st1->e=5;
  st1->f=1; st1->g=2; st1->h=3; st1->i=4; st1->j=5;
}
int main()
{
  struct st st1;
  int a,b,c,d,e,f,g;
  set_value(&st1);

  if(st1.a)
    if(!st1.b) ;
    else if(st1.c)
      if(!st1.d);
      else if(!st1.e) 
	g=6;
      else if(st1.f)
	if(st1.g)
	  if(st1.h){
	    if(st1.i){
	      if(!st1.j) 
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
