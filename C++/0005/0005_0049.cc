


#include <stdio.h>

void sub1() {
#if defined(__cplusplus)
#else
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#else
    int i;
#endif
#endif

  
#pragma omp parallel        
  {
    int j = 1;
  }

  
#pragma omp parallel        
  {
    {
      int j = 1;
    }
  }

  
#pragma omp parallel for    
#if defined(__cplusplus)
  for (int i=0; i<2; i++) {
#else
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
  for (int i=0; i<2; i++) {
#else
  for ( i=0; i<2; i++) {
#endif
#endif
    int j = 1;
  }

  
#pragma omp parallel        
  {
#pragma omp for
#if defined(__cplusplus)
    for (int i=0; i<2; i++) {
#else
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
    for (int i=0; i<2; i++) {
#else
    for ( i=0; i<2; i++) {
#endif
#endif
      int j = i;
    }
  }

  
#pragma omp parallel        
  {
#if defined(__cplusplus)
    for (int i=0; i<2; i++) {
#else
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
    for (int i=0; i<2; i++) {
#else
    for ( i=0; i<2; i++) {
#endif
#endif
      int j = 1;
    }
  }
}
int main()
{
  printf(" OK \n");
}
