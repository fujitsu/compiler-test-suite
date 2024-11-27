#include <stdio.h>
struct st {
 long double a1,a2,a3,a4,b1,b2,b3,b4;
};

void set_value_st(struct st *st1)
{
  st1->a1=1; st1->a2=1; st1->a3=1; st1->a4=1;
  st1->b1=0; st1->b2=0; st1->b3=0; st1->b4=0;
}
int main()
{
  struct st st1;
  long double a=0,b=0,c=0,dummy1=0, dummy2=0, dummy3=0;
  int i=0,j=0;
  int judge1[10]={0,1,2,3,4,5,6,7,8,9};
  int judge2[10]={0,1,2,3,4,5,6,7,8,9};
  set_value_st(&st1);

  do{
    switch(judge1[i]){
    case 0 :
      switch(!st1.b1){
      case 1:
	switch(!st1.b2){
	case 1:
	  do{
	    switch(judge2[9-j]){
	    case 1: 
	      a=(st1.a1 && !st1.b1 && st1.a2 && st1.a3)?1:2; break;
	    case 8:
	      dummy1=32; break;
	    case 9:		   		   
	      c=(st1.a1)?1:2; break;
	    }
	    j++;
	  }while(j<10);
	  break;
	case 0: 
	  dummy2 = 34;
	  break;
	} 
	break;
      case 0 : 	
	dummy3=33;
	break;
      default: break;
      } 
      break;
    case 2:
      b=(!st1.b1 && !st1.b1 && !st1.b3 && !st1.b4)?1:2; break;
    case 3:
      dummy2=35;
    }
    i++;
  } while(i<10);

  if(a=1 && b==1 && c==1)
    printf("ok\n");
  else
    printf("ng a=%Lf b=%Lf c=%Lf\n",a,b,c);
}

