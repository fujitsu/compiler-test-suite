#include <stdio.h>
int out  (float *fa, float *fb, double *da, double *db, int *ia, int *ib, int n);
int init (float fa[10], float fb[10], double da[10], double db[10], int ia[10], int ib[10], int n);
int test (float *fa, float *fb, double *da, double* db, int *ia, int *ib, int n);
int main() {
  float		fa[10],fb[10] ;
  double	da[10],db[10] ;
  int		ia[10],ib[10] ;

  init(fa,fb,da,db,ia,ib,10) ;
  test(fa,fb,da,db,ia,ib,10) ;
  out (fa,fb,da,db,ia,ib,10) ;
}
int init (fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  printf (" P070743 optimization test \n") ;
  for (i=0 ; i<n ; i++){
    fa[i]=da[i]=ia[i]=i*i ;
    fb[i]=db[i]=ib[i]=3 ;
  }
}
int test (fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  for(i=1;i<n;i++){
    fb[i]+=fb[i-1]+fa[i] ;
  }
  for(i=1;i<n;i++){
    db[i]+=db[i-1]*da[i] ;
  }
  for(i=1;i<n;i++){
    ib[i]+=ib[i-1]-ia[i] ;
  }
}
int out  (fa,fb,da,db,ia,ib,n)
     float	*fa, *fb ;
     double	*da, *db ;
     int	*ia, *ib ,n ;
{
  int i ;
  printf (" P070743 optimization test END \n") ;
  for (i=0 ; i<n ; i++){
    printf(" fa[%d]:%f fb[%d]:%f \n",i,fa[i],i,fb[i]) ;
  }
  for (i=0 ; i<n ; i++){
    printf(" da[%d]:%f db[%d]:%f \n",i,da[i],i,db[i]) ;
  }
  for (i=0 ; i<n ; i++){
    printf(" ia[%d]:%d ib[%d]:%d \n",i,ia[i],i,ib[i]) ;
  }
}
