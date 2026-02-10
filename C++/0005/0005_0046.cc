#include <stdio.h>
#include <stdarg.h>

#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
struct AAA {
  long l; 
  va_list s_ap_1;
  va_list s_ap_2;
};

va_list *func1(va_list *ap)
{
  return ap;
}

void sub( int a, ...)
{
  int     i;     
  char   *c[10]; 
  va_list a_ap_1[10]; 
  va_list a_ap_2[10]; 
  struct AAA aaa;
  
  va_list ap_1, ap_2;


  va_start( ap_1 , a );

  
  va_copy ( ap_1 , ap_2);
  
  va_copy ( ap_1 , aaa.s_ap_2);
  
  va_copy ( ap_1 , a_ap_2[0]);

#ifdef __cplusplus
  class C2 {
    va_list  c_ap_1;
    va_list  c_ap_2;
  };

  
  va_copy ( ap_1 , C2::c_ap_1);
#endif


  va_start( aaa.s_ap_1 , a );

  
  va_copy ( aaa.s_ap_1 , ap_2);
  
  va_copy ( aaa.s_ap_1 , aaa.s_ap_2);
  
  va_copy ( aaa.s_ap_1 , a_ap_2[0]);

#ifdef __cplusplus
  class C2 {
    va_list  ap_1;
    va_list  ap_2;

    int C2::*pd;

    
    va_copy ( aaa.s_ap_1 , &C2::ap_1);
  };
#endif


  va_start( a_ap_1[0] , a );

  
  va_copy ( a_ap_1[0] , ap_2);
  
  va_copy ( a_ap_1[0] , aaa.s_ap_2);
  
  va_copy ( a_ap_1[0] , a_ap_2[0]);

#ifdef __cplusplus
  class C2 {
    va_list  ap_1;
    va_list  ap_2;

    int C2::*pd;

    
    va_copy ( a_ap_1[0] , &C2::ap_1);
  };
#endif


#ifdef __cplusplus
  va_start( ap_1 , a );

  
  va_copy ( ap_1 , ap_2);
  
  va_copy ( ap_1 , aaa.s_ap_2);
  
  va_copy ( ap_1 , a_ap_2[0]);

#ifdef __cplusplus
  class C2 {
    va_list  ap_1;
    va_list  ap_2;
  };

  
  va_copy ( ap_1 , &C2::ap_1);
#endif
#endif

}

#endif
int main()
{
  va_list ap;
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
  sub ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10); 
#endif

  printf("# OK #\n");
  return 0;
}
