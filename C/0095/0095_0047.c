#include <stdio.h>
struct t {
                       long long int a:8; 
                       long long int  :1; 
                       long long int b:8;
};
struct t  b[3][3][3];
void display(long long int a,long long int b) {
     printf("(%.8x-%.8x,%.8x-%.8x)\n" 
            ,*((int *)&a),*(((int *)&(a))+1) 
            ,*((int *)&b),*(((int *)&(b))+1));
}

void    sub(struct t a[][3][3]) {
int i,j,k,ok=0,ng=0;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           

         b[i][j][k].a = a[i][j][k].a + 10LL;
      } 

}
void    check(struct t a[][3][3]) {
int i,j,k,ok=0,ng=0;
  for (i=0; i<3; i++ )    
    for (j=0; j<3; j++)    
      for (k=0; k<3; k++) {           
        if (b[i][j][k].a==a[i][j][k].b) ok++; else ng++;

      }
  if (ng) printf(" ng\n");
   else   printf(" ok\n");
}
int main( ) {
struct t  a[3][3][3]={
 {
  {{10LL,20LL},{30LL,40LL},{50LL,60LL}}
 ,{{11LL,21LL},{31LL,41LL},{51LL,61LL}}
 ,{{12LL,22LL},{32LL,42LL},{52LL,62LL}}
  }, 
 {
  {{13LL,23LL},{33LL,43LL},{53LL,63LL}}
 ,{{14LL,24LL},{34LL,44LL},{54LL,64LL}}
 ,{{15LL,25LL},{35LL,45LL},{55LL,65LL}}
  }, 
 {
  {{16LL,26LL},{36LL,46LL},{56LL,66LL}}
 ,{{17LL,27LL},{37LL,47LL},{57LL,67LL}}
 ,{{18LL,28LL},{38LL,48LL},{58LL,68LL}}
  } 
};
  sub(a);
  check(a);
}
