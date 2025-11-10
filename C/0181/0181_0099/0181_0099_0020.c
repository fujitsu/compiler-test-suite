#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif


#define MAX_NUM_THREADS 8
int lto_sub_20()
{
  int it, ier;
  int  loop = 10, thread;
  char sa[10]={"abc"};
  char sb[10][10], sc[10];
  int i,j;

  thread = it = MAX_NUM_THREADS;
  memset(sb,' ',10*10);
#ifdef _OPENMP
  thread = omp_get_max_threads();
  if (thread > MAX_NUM_THREADS) {

    printf( " parallel private(sa,it) ------\n");
    printf("OK\n");
    return(0);
  }
#else
  thread = 1;
#endif
#pragma omp parallel private(sa,it)
  {
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#else
    it = 1;
#endif
    switch (it)
      {
      case 1:
	strcpy(sa,"        01");
	break;
      case 2:
	strcpy(sa,"        02");
	break;
      case 3:
	strcpy(sa,"        03");
	break;
      case 4:
	strcpy(sa,"        04");
	break;
      case 5:
	strcpy(sa,"        05");
	break;
      case 6:
	strcpy(sa,"        06");
	break;
      case 7:
	strcpy(sa,"        07");
	break;
      case 8:
	strcpy(sa,"        08");
	break;
      }
    memcpy(sb[it-1],sa,10);
  }
  ier = 0;
  for(i=0; i<thread; i++){
    switch (i)
      {
      case 0:
	strcpy(sc,"        01");
	break;
      case 1:
	strcpy(sc,"        02");
	break;
      case 2:
	strcpy(sc,"        03");
	break;
      case 3:
	strcpy(sc,"        04");
	break;
      case 4:
	strcpy(sc,"        05");
	break;
      case 5:
	strcpy(sc,"        06");
	break;
      case 6:
	strcpy(sc,"        07");
	break;
      case 7:
	strcpy(sc,"        08");
	break;
      }
    if(strncmp(sb[i],sc,10)!=0) ier=ier+1 ;
  }
  for (i=thread; i<loop; i++){
    if(strncmp(sb[i],"          ",10)!=0) ier=ier+1 ;
  }

  printf( " parallel private(sa,it) ------\n");
  if(!strncmp(sa,"abc",3) && ier==0) {
    printf( "OK\n");
  }else{
    printf( "NG!  PRIVATE clause is not active!\n");
    printf( "     sa=%s\n",sa);
    
  }
  return (0) ;
}
