#include <stdio.h>
static int  andcc_test(); 
static int  subcc_test();
static int  addcc_test();
static int  result_func();
static int ret_value();
int main()
{
  int i,j,k,r;
   i=result_func();
   j=result_func();
   k=result_func();

   r = subcc_test(i);
   r  = r &  addcc_test(j);
   r = r & andcc_test(k);
   if( r )
	printf(" HR005 :  OK \n");
   else
	printf(" HR00% :  NG \n");

}

static int result_func()
{
	return 3;
}

static int subcc_test(a)
int a;
{
  int b,i ;

  b = ret_value();  
  a = a + 1;        
  if( a-- < 0 )
    return 0;

  b++;              
  a = b - 2 ;       

  if(  a == 2 )
    return 1;
  b++;             
  b--;             
  b++;
  b--;
  b++;
  b--;            
  while( b-- )
    {
      a ++;        
    }
  return ( a - 7 );     
}
static int addcc_test(b)
int b;
{
  int i,j;

  j = ret_value();   
  i = ret_value();   
  j++;
  if( !j )    
    return 0;
  
  j--;
  j++;               
  i--;               
  j++;               
  i--;              
  j++;              
  i--;              
  i--;              
  i--;               
  i--;               
  j++;
  j++;
  j = j - 11;         
  j++;
  i++;              
  if( !++j && !++i )
    return 1;
    
  return 0; 
}
static int andcc_test(i)
     int i;
{
  int a,b,c,d,e,f,g,h;
  i++;                    
  
  a = ret_value();        
  b = i & a;              
  c = b | i;              
  d = !c;                
  e = d | i;             
  f = !e ;               
  g = ~( a & b | c ) ;    
  h = g & f;

  if ( !(h&h) && c == 4 )
    return 1;

  return 0;
}

static int ret_value()
{
  return 4;
} 
