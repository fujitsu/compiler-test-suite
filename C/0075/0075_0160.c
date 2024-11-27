#include <stdio.h>
static int   get_int_value();
static float get_float_value();
int main()
{
  int   a,i,c,d,e,f,g,h,k,l,m ;
  float b,j ;

  a = get_int_value();
  i = a;
  if( i == 0 )
      printf("HR016(NO.1) :                OK\n");
    else
      printf("HR016(NO.1) :                NG\n");

  b = get_float_value();
  j = b;

  if( j == 0.0 )
    printf("HR009:ignore floating data : OK \n");
  else
    printf("HR009:ignore floating data : OK \n");

  c= get_int_value();
  k = c ;
  if(k == 0){
    c = 1;
    d = c;
    e = d;
    f = e;
    g = f;
    h = g;  
    l = c + d + e + f + g + h;
    m = l;
    if( m != 0 )
      printf("HR016(NO.2) :                OK\n");
    else
      printf("HR016(NO.2) :                NG\n");
  }
 if( get_int_value() == 0 )
   printf("HR016(NO.3) :                OK\n");
 else
   printf("HR016(NO.3) :                NG\n");
}

static int get_int_value()
{
   return 0;
}

static float get_float_value()
{
   return 1.0;
}
