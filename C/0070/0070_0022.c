#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

typedef struct{
    float real,imag;
}COMPLEX8;
typedef struct {
         int        tii;
         float      trr;
         COMPLEX8   tcc;
         char       tss[4];
} type ;
int main()
{
      int ia[10], ith, ier;
      int  thread=4, loop=10;
      char ss[4];
      type tt1[10];
      int  i;


      for(i=0;i<10;i++)
	{
          ia[i] = 0;
	}
      for (i=0; i<loop; i++){
         
	 switch(i)
	   {
	   case 0: strncpy(ss,"   1",4); break;
	   case 1: strncpy(ss,"   2",4); break;
	   case 2: strncpy(ss,"   3",4); break;
	   case 3: strncpy(ss,"   4",4); break;
	   case 4: strncpy(ss,"   5",4); break;
	   case 5: strncpy(ss,"   6",4); break;
	   case 6: strncpy(ss,"   7",4); break;
	   case 7: strncpy(ss,"   8",4); break;
	   case 8: strncpy(ss,"   9",4); break;
	   case 9: strncpy(ss,"  10",4); break;
	   }
         
         tt1[i].tii = i+1;
         tt1[i].trr = (float)(i+1);
         tt1[i].tcc.real = (float)(i+1)*10.0;
         tt1[i].tcc.imag = (float)(i+1)*0.1;
         strncpy(tt1[i].tss,ss,4);
      }

#ifdef _OPENMP
    thread=omp_get_max_threads();
#endif

#pragma omp parallel  private(tt1,ith,ss)
   {
#ifdef _OPENMP
    ith=omp_get_thread_num()+1;
#endif
      for (i=0; i<loop; i+=1){ 
         
	 if(i != 9)
	   {
	     strcpy(ss,"  ");
	     ss[2] = (i+1) +'0';
	     ss[3] = ith +'0';
	   }
	 else
	   {
	     strcpy(ss," ");
	     ss[2] = 1 +'0';
	     ss[2] = 0 +'0';
	     ss[3] = ith +'0';
	   }
         
         tt1[i].tii = (i+1)*ith;
         tt1[i].trr = (i+1)/(ith+1.3);
         tt1[i].tcc.real = (i+1)*10.0 ;
         tt1[i].tcc.imag = ith*1.0 ;
         strncpy(tt1[i].tss,ss,4);
      }
      ia[ith-1]=ith;
   }

      ier=0;
      for (i=0; i<thread; i++){
         if(ia[i]!=(i+1))  ier=ier+1;
      }
      for (i=thread; i<loop; i++){
         if(ia[i]!=0) ier=ier+1;
      }
      for (i=0; i<loop; i++){
         if(tt1[i].tii != (i+1)) ier=ier+1 ;
         if(tt1[i].trr != (i+1)*1.0) ier=ier+1 ;
         if((tt1[i].tcc.real != (i+1)*10.0) &&
            (tt1[i].tcc.imag != (i+1)*0.1)) ier=ier+1 ;
         
	 if(i != 9)
	   {
	     strcpy(ss,"   ");
	     ss[3] = (i+1) +'0';
	   }
	 else
	   {
	     strcpy(ss,"  ");
	     ss[2] = 1 +'0';
	     ss[3] = 0 +'0';
	   }
         if(strncmp(tt1[i].tss,ss,4)!=0) ier=ier+1 ;
      }
      printf( "-----  --");
      printf( " parallel private(tt1,ith) ------\n");
      if ( ier==0 ) {
         printf("OK\n");
      }else{
         printf("NG!  PRIVATE clause is not active!\n");
         for (i=0; i<loop; i++){
            printf("i=%d  tt1(%d)= %d %f (%f,%f) %s\n",i,i,tt1[i].tii,
		   tt1[i].trr,tt1[i].tcc.real,tt1[i].tcc.imag,tt1[i].tss);
         }
         printf("     ier=%d\n",ier);
	 for(i=0;i<10;i++)
	   {
	     if(i==0) printf("     ia=");
             printf("%d ",ia[i]);
           }
         printf("\n");
      }
   exit (0) ;
}
