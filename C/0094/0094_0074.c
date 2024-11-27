#include <stdio.h>
struct t {
                       long double a; 
                       long double b;
};
void    sub(struct t a[][3][3],struct t b[ ][3][3]) {
int i,j,k,ok=0,ng=0;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)   
      for (k=0; k<3; k++) 
         b[i][j][k].a = a[i][j][k].a + 10.0L;

}
void    clean(struct t b[][3][3]) {
int i,j,k;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)   
      for (k=0; k<3; k++) 
        b[i][j][k].a=0.0L;
}
void    check(struct t a[][3][3],struct t b[ ][3][3]) {
int i,j,k,ok=0,ng=0;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)   
      for (k=0; k<3; k++) 
        if (b[i][j][k].a==a[i][j][k].b) ok++; else ng++;
  if (ng) printf(" ng\n");
   else   printf(" ok\n");
}
int main( ) {
int      e[200001];
struct t  b[3][3][3];
int      c[200001];
struct t  a[3][3][3]={
 {
  {{10.0L,20.0L},{30.0L,40.0L},{50.0L,60.0L}}
 ,{{11.0L,21.0L},{31.0L,41.0L},{51.0L,61.0L}}
 ,{{12.0L,22.0L},{32.0L,42.0L},{52.0L,62.0L}}
  }, 
 {
  {{13.0L,23.0L},{33.0L,43.0L},{53.0L,63.0L}}
 ,{{14.0L,24.0L},{34.0L,44.0L},{54.0L,64.0L}}
 ,{{15.0L,25.0L},{35.0L,45.0L},{55.0L,65.0L}}
  }, 
 {
  {{16.0L,26.0L},{36.0L,46.0L},{56.0L,66.0L}}
 ,{{17.0L,27.0L},{37.0L,47.0L},{57.0L,67.0L}}
 ,{{18.0L,28.0L},{38.0L,48.0L},{58.0L,68.0L}}
  } 
};
int      f[200001];
  clean(b);
  sub(a,b);
  check(a,b);
}
