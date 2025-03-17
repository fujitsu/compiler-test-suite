#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif
typedef struct{
    float real,imag;
}COMPLEX8;
typedef struct{
    int   tii;
    float      trr;
    COMPLEX8   tcc;
    char       tss[4];
} type ;

class Class {
public:
Class(int num, ...)
{
      int      itn, ier;
      int      thread=1, loop=100;
      char     ss[4];
    
    
      int i,j;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;



      type  tt1[100];
      type *pt1;

      for (i=0; i<loop; i+=1){
         
         j = i+1;
	 strcpy(ss,"   ");
	 ss[3] = j +'0';

         
         tt1[i].tii = i+1;
	 tt1[i].trr = (float)(i+1);
	 tt1[i].tcc.real = (float)(i+1);
	 tt1[i].tcc.imag = (float)(i+1);
	 strncpy(tt1[i].tss,ss,4);
      }

#pragma omp parallel  private(pt1,itn,ss)
{
#pragma omp master
      {
	thread=omp_get_num_threads();
	if (thread > 100)
	  printf("Error: omp_get_num_threads() > 100\n");
      }
      itn=omp_get_thread_num();
      pt1 = &tt1[itn];
      
      strcpy(ss,"  ");
      ss[2] = (itn+1) +'0';
      ss[3] = 0 +'0';
      
      pt1->tii = (itn+1)*10;
      pt1->trr = (float)(itn+1)*10.0;
      pt1->tcc.real = (float)(itn+1)*10;
      pt1->tcc.imag = (float)(itn+1)*(-10);
      strncpy(pt1->tss,ss,4);
}
      ier=0;
      for (i=0; i<thread; i++){
         pt1 = &tt1[i];
         if(pt1->tii != (i+1)*10) ier=ier+1 ;
         if(pt1->trr != (float)(i+1)*10 ) ier=ier+1 ;
         if((pt1->tcc.real != (float)(i+1)*10) &&
            (pt1->tcc.imag != (float)(i+1)*(-10))) ier=ier+1 ;
         
         
	 strcpy(ss,"  ");
	 ss[2] = (i+1) +'0';
	 ss[3] = 0 +'0';
	 if(strncmp(pt1->tss,ss,4)!=0) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){
	 pt1 = &tt1[i];
         if(pt1->tii != (i+1)) ier=ier+1;
         if(pt1->trr != (float)(i+1)) ier=ier+1;
         if((pt1->tcc.real != (float)(i+1)) &&
            (pt1->tcc.imag != (float)(i+1))) ier=ier+1 ;
         
         
	 strcpy(ss,"   ");
	 ss[3] = (i+1) +'0';
	 if(strncmp(pt1->tss,ss,4)!=0) ier=ier+1;
      }
      printf( "-----");
      printf( " parallel private(pt1) ------\n");
      if ( ier==0 ) {
         printf("OK\n");
      }else{
         printf("NG!  PRIVATE clause is not active!\n");
         for (i=0; i<loop; i+=1){ 
            printf("     i=%d tt1[%d]= %d %f (%f,%f) %s\n",i,i, tt1[i].tii,
		   tt1[i].trr, tt1[i].tcc.real, tt1[i].tcc.imag, tt1[i].tss);
         }
      }
      exit (0) ;
}
};
int main() {
  Class O(3, 1, 2, 3);
}
