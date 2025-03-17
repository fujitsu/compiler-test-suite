

#include <stdio.h>
#include <stdarg.h>

typedef TYPE1 type1;
typedef TYPE1 *typep;
static void
test_ng(int aaa , ...)
 {
  int i;
  va_list ap;
  char *p;
  char cval;  
  short sval; 
  int ival;   
  long lval;  
  long long llval; 
  float fval; 
  double dval; 
  long double ldval; 
  typep pval; 

  va_start(ap, aaa);

  i = va_arg(ap, type1);
  printf("test_ng (%d) %ld",aaa, i);
  cval = va_arg(ap, type1);
  printf(" (char)%d \n", cval);

  sval = va_arg(ap, type1);
  printf("    (short)%d \n", sval);

  ival = va_arg(ap, type1);
  printf("    (int)%d \n", ival);

  lval = va_arg(ap, type1);
  printf("    (long)%ld \n", lval);

  llval = va_arg(ap, type1);
  printf("    (long long)%ld \n", llval);

  fval = va_arg(ap, type1);
  printf("    (float)%f \n", fval);

  dval = va_arg(ap, type1);
  printf("    (double)%g \n", dval);

  ldval = va_arg(ap, type1);
  printf("    (long double)%Lg \n", ldval);

  pval = va_arg(ap, typep);
  printf("    (pointer)%d \n", pval);

  va_end(ap);
  return;
}


int main()
{
  type1 a, b;

  a = 12345;
  b = -12345;
  test_ng((int)1, a, b,b,b,b,b,b,b,b,b);

  return 0;
}
