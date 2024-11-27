#include <stdio.h>
struct t {
                       long double a; 
                            double b; 
                            int    c; 
};
int    opt(int a) { return(a*a);}
int    sub(struct t a[][3][3][3][3][3][3][3][3][3],
            struct t b[][3][3][3][3][3][3][3][3][3],
            struct t c[][3][3][3][3][3][3][3][3][3]) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0,ok=0,ng=0;

  for (i=0; i<3; i++ )      {
                                           u+=opt(i);
    for (j=0; j<3; j++) {     
                                           u+=opt(j);
      for (k=0; k<3; k++) {  
                                           u+=opt(k);
        for (l=0; l<3; l++){  
                                           u+=opt(l);
          for (m=0; m<3; m++) {  
                                           u+=opt(m);
            for (n=0; n<3; n++) {  
                                           u+=opt(n);
              for (o=0; o<3; o++) {  
                                           u+=opt(o);
                for (p=0; p<3; p++) {  
                                           u+=opt(p);
                  for (q=0; q<3; q++) {  
                                           u+=opt(q);
                    for (r=0; r<3; r++) {  
                                           u+=opt(r);
         c[i][j][k][l][m][n][o][p][q][r].a 
        =a[i][j][k][l][m][n][o][p][q][r].a /b[i][j][k][l][m][n][o][p][q][r].a ; 
         c[i][j][k][l][m][n][o][p][q][r].b 
        =a[i][j][k][l][m][n][o][p][q][r].b /b[i][j][k][l][m][n][o][p][q][r].b ; 
         c[i][j][k][l][m][n][o][p][q][r].c 
        =a[i][j][k][l][m][n][o][p][q][r].c /b[i][j][k][l][m][n][o][p][q][r].c ; 
                    }}}}}}}}}}
  return(u);

}
int    clean(struct t b[][3][3][3][3][3][3][3][3][3]
            ,long double x
            ,     double y
            ,     int    z) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0;
  for (i=0; i<3; i++ ) {     
                                           u+=opt(i);
    for (j=0; j<3; j++)  {    
                                           u+=opt(j);
      for (k=0; k<3; k++)  { 
                                           u+=opt(k);
        for (l=0; l<3; l++)  { 
                                           u+=opt(l);
          for (m=0; m<3; m++)  { 
                                           u+=opt(m);
            for (n=0; n<3; n++)  { 
                                           u+=opt(n);
              for (o=0; o<3; o++)  { 
                                           u+=opt(o);
                for (p=0; p<3; p++)  { 
                                           u+=opt(p);
                  for (q=0; q<3; q++)  { 
                                           u+=opt(q);
                    for (r=0; r<3; r++)  {
                                           u+=opt(r);
         b[i][j][k][l][m][n][o][p][q][r].a = x;
         b[i][j][k][l][m][n][o][p][q][r].b = y;
         b[i][j][k][l][m][n][o][p][q][r].c = z;
                    }}}}}}}}}}
  return(u);
}
int    check(struct t a[][3][3][3][3][3][3][3][3][3]) {
 int i,j,k,l,m,n,o,p,q,r,s,t,u=0;
int ok=0,ng=0;
  for (i=0; i<3; i++ ) {     
                                           u+=opt(i);
    for (j=0; j<3; j++)  {    
                                           u+=opt(j);
      for (k=0; k<3; k++)  { 
                                           u+=opt(k);
        for (l=0; l<3; l++)  { 
                                           u+=opt(l);
          for (m=0; m<3; m++)  { 
                                           u+=opt(m);
            for (n=0; n<3; n++)  { 
                                           u+=opt(n);
              for (o=0; o<3; o++)  { 
                                           u+=opt(o);
                for (p=0; p<3; p++)  { 
                                           u+=opt(p);
                  for (q=0; q<3; q++)  { 
                                           u+=opt(q);
                    for (r=0; r<3; r++)  { 
                                           u+=opt(r);
        if (a[i][j][k][l][m][n][o][p][q][r].a == 2147483647.0L/2.0L 
        &&  a[i][j][k][l][m][n][o][p][q][r].b == 2147483647.0/2.0 
        &&  a[i][j][k][l][m][n][o][p][q][r].c == 2147483647/2)
         ok++; else ng++;
                    }}}}}}}}}}
  ng ?  printf(" (1) ng\n") : printf(" (1) ok\n");
  return(u);
}
int main( ) {
struct t  b[3][3][3][3][3][3][3][3][3][3];
struct t  a[3][3][3][3][3][3][3][3][3][3];
struct t  c[3][3][3][3][3][3][3][3][3][3];
 int       d,e,f,g,h;
  d=clean(a,2147483647.0L,2147483647.0,2147483647);
  e=clean(b,2.0L,2.0,2);
  f=clean(c,0.0L,0.0,0);
  g=sub(a,b,c);
  h=check(c);
  if (d==e && e==f && f==g && g==h && h==147620)
          printf(" (2) ok\n");
   else   printf(" (2) ng\n");
}
