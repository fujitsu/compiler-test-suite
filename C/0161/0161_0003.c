#include <stdio.h>

struct t {
#if defined(i386)
	long long int a;
#else
        long int a; 
#endif
};
void    sub(struct t a[][3][3][3][3][3][3][3][3][3],
            struct t b[][3][3][3][3][3][3][3][3][3],
            struct t c[][3][3][3][3][3][3][3][3][3]) {
int i,j,k,l,m,n,o,p,q,r,s,t,u,ok=0,ng=0;

  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  
         c[i][j][k][l][m][n][o][p][q][r].a 
        =a[i][j][k][l][m][n][o][p][q][r].a  
        /b[i][j][k][l][m][n][o][p][q][r].a ; 

}
void    clean(struct t b[][3][3][3][3][3][3][3][3][3],int z) {
int i,j,k,l,m,n,o,p,q,r,s,t,u;
  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  {
         b[i][j][k][l][m][n][o][p][q][r].a = z;
           }
}
void    check(struct t a[][3][3][3][3][3][3][3][3][3]) {
int i,j,k,l,m,n,o,p,q,r,s,t,u;
int ok=0,ng=0;
  for (i=0; i<3; i++ )     
    for (j=0; j<3; j++)     
      for (k=0; k<3; k++)  
        for (l=0; l<3; l++)  
          for (m=0; m<3; m++)  
            for (n=0; n<3; n++)  
              for (o=0; o<3; o++)  
                for (p=0; p<3; p++)  
                  for (q=0; q<3; q++)  
                    for (r=0; r<3; r++)  
        if (a[i][j][k][l][m][n][o][p][q][r].a == 0x80000000)
         ok++; else ng++;
  if (ng) printf("ng\n");
   else   printf("ok\n");
}
int main( ) {
struct t  b[3][3][3][3][3][3][3][3][3][3];
struct t  a[3][3][3][3][3][3][3][3][3][3];
struct t  c[3][3][3][3][3][3][3][3][3][3];
  clean(a,0x80000000);
  clean(b,-1);
  clean(c,0);
  sub(a,b,c);
  check(c);
}
