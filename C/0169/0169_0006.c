#include <stdio.h>

typedef union uni {
  int     a;
  short   b;
}       UUT;

typedef struct st {
  int     a;
  short b;
  UUT     u;
}       SST;

 SST   
 strelm(s) 
 	UUT     s; 
 { 
 	SST     st; 
 	st.u = s; 
 	st.a = 2; 
 	st.b = 3; 
  	return st;  
 } 
int main()
{
  SST     st,  sret; 
  st.u.a = 234;
  st.u.b = 1;
  sret = strelm(st.u);

  if(sret.u.a == 1) 

    printf("ok\n");
  else 
    printf("ng\n");    
}
