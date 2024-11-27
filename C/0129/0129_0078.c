#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int x_print (int dim_n, int *p_dim);
int m3_rgl006 (void);
int num0 (void) { return 0 ; }
int num10 (void) { return 10 ; }
int numn (int n) { return n ; }

 int x,y,z,a;
int 
main (void) {
  printf(" start\n");
  m3_rgl006() ;
  printf("\n") ;
  printf("  x=%d\n",x); printf("  y=%d\n",y); printf("  z=%d\n",z);
  if (x==285 && y==286 && z==0) printf("*** ok ***\n") ;
  else                          printf("*** ng ***\n") ;
  printf(" end\n") ;
exit (0);
  }
  int 
m3_rgl006 (void) {
  int b,c,d,e,f,g,h,i,j ;
  int aa,bb,cc,dd,ee,ff,gg,hh,ii,jj ;
  int dim1[10] ; int dim2[2][10] ; int dim3[2][3][10] ;
  int l,m,n ;
  x=y=z=a=num0() ;
  l=m=n=num10() ;
  b=a+1  ; c=b+1  ; d=c+1  ; e=d+1  ; f=e+1  ;
  g=f+1  ; h=g+1  ; i=h+1  ; j=i+1  ;
  aa=a*a ; bb=b*b ; cc=c*c ; dd=d*d ; ee=e*e ;
  ff=f*f ; gg=g*g ; hh=h*h ; ii=i*i ; jj=j*j ;
  x=aa+bb+cc+dd+ee+ff+gg+hh+ii+jj ;
  for ( l=0 ; l<10 ; ++l) {
    dim1[l]=a+l ;
  }
  x_print(10,dim1) ;
  for ( l=0 ; l<2 ; ++l) {
    dim2[l][a]=aa+0 ; dim2[l][b]=aa+1 ; dim2[l][c]=aa+2 ;
    dim2[l][d]=aa+3 ; dim2[l][e]=aa+4 ; dim2[l][f]=aa+5 ;
    dim2[l][g]=aa+6 ; dim2[l][h]=aa+7 ; dim2[l][i]=aa+8 ;
    dim2[l][j]=aa+9 ;
    x_print(10,&dim2[l][a]) ;
    for ( n=0 ; n<3 ; ++n) {
      a=num0() ;
      dim3[l][n][a+0] = a+dim1[a+0] ;
      dim3[l][n][a+1] = a+dim1[a+1] ;
      dim3[l][n][a+2] = a+dim1[a+2] ;
      dim3[l][n][a+3] = a+dim1[a+3] ;
      dim3[l][n][a+4] = a+dim1[a+4] ;
      dim3[l][n][a+5] = a+dim1[a+5] ;
      dim3[l][n][a+6] = a+dim1[a+6] ;
      dim3[l][n][a+7] = a+dim1[a+7] ;
      dim3[l][n][a+8] = a+dim1[a+8] ;
      dim3[l][n][a+9] = a+dim1[a+9] ;
      x_print(10,&dim3[l][n][0]) ;
      }
    a=numn(l) ;
    }
  y=y+a*a ; y=y+b*b ; y=y+c*c ; y=y+d*d ; y=y+e*e ;
  y=y+f*f ; y=y+g*g ; y=y+h*h ; y=y+i*i ; y=y+j*j ;
  return 0;
  }
  int 
x_print (int dim_n, int *p_dim)
  {
  int i ;
  int *p_ent ;
  p_ent=p_dim ;
  for ( i=0 ; i<dim_n ; ++i) {
    if (( i==0 )|( i%10==0 )) printf("\n") ;
    printf(" %d",*p_ent) ;
    ++p_ent ;
  }
  printf("\n") ;
  return 0;
 }

