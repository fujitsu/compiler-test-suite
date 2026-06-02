#include <stdio.h>
#include <math.h>
int get_value3();
int get_value2(int *a, int *b, int *c, int *d, int *e, int *f, int *g);
int get_value1(int *a, int *b, int *c, int *d, int *e, int *f, int *g);
int peep3();
int peep2(int n, short int s[], char c[]);
int peep1(int n );
#define PI  3.14159265358979323846
double xr[100],xi[100];

int main()
{
  int i,j,np;
  double a,enp,t,x,y,z,zr,zi,zm;
  double t1,t2,t3;
  short  int  s16[100];
         char s8[100];  
  int peep();

      np  = 8;
      for (i = 1; i <= 10; i++ ){
	np = np * 2; 
	t = PI / np;
	xr[i] = (np - 1.0) * 0.5;
	xi[i] = 0.0;
      }

      np = np/1000;
      peep1(np);

      zr = zi = 100.0;
      np=100;
      for (i = 0; i <= np-1; i++ ) {
	if (zr < (a = fabs(xr[i]-1)) ){ 
	   zr = a; 
	}
	if (zi < (a = fabs(xi[i])) ) {
	   zi = a; 
	}
      }
      if ( fabs(zr) < fabs(zi) ) 
         zr = zi;

      if( zr == 4094.5 && zi == 100.00)
         printf("Peephole test1 : OK\n");
      
      for(i=1;i < 100; i++ ){
          s16[i] = 0;
           s8[i] = 0; 
      }

      if( peep2(np,s16,s8) == 6 )
         printf("Peephole test2 : OK\n");
      else
         printf("Peephole test2 : NG\n");

      if( peep3() == 13 )
         printf("Peephole test3 : OK\n");
      else
         printf("Peephole test3 : NG\n");
}

int peep1( n )
int n ;
{
  int i,j,k;
  double  a,cc1,ss1,cc3,ss3,tpi;
  printf("%d\n",n);

  tpi = 2.0 * PI;

   for (j = 1; j<= n ; j++) {
     a = 3.0 * j; 
     cc1 = cos(a); 
     ss1 = sin(a);
     
     cc3 =  cc1; 
     ss3 =  ss1; 
     a = tpi * cc3 * ss3 + 1.0; 
     xi[j] = xr[j] = a;
  }
}

int peep2(n,s,c)
int n;
short int  s[];
      char c[];
{
  int locate;

  n = n / 15;
  if (n < 7){
    locate = n + 8;

    s[locate] = n;
    c[locate] = n;
    return ((n & 1) ? s[locate] : c[locate]);
  }
}

int peep3()
{
   int a,b,c,d,e,f,g,h,i,j,k,l,m,n,q,value;
   int sum;

   
   get_value1( &a,&b,&c,&d,&e,&f,&g );
   get_value2( &h,&i,&j,&k,&l,&m,&n );
   value = get_value3();

  sum = 0;
  if( ( q=a ) != value ){
    sum+= q;
    if( ( q=b ) != value ){
      sum+= q;
      if( ( q=c ) != value ){
        sum+= q;
        if( ( q=d ) != value ){
          sum+= q;
          if( ( q=e ) != value ){
            sum+= q;
            if( ( q=f ) != value ){
              sum+= q;
              if( ( q=g ) != g ){
                sum+= q;
              }
            }
          }
        }
      }
    }
  }
  if( ( q=h ) != g )
    sum++;
  if( ( q=i ) != g )
    sum++;
  if( ( q=j ) != g )
    sum++;
  if( ( q=k ) != value )
    sum++;
  if( ( q=l ) != value )
    sum++;
  if( ( q=m ) != value )
    sum++;
  if( ( q=n ) != value )
    sum++;

  printf("sum= %d\n",sum);
  return sum;
}

int get_value1(a,b,c,d,e,f,g)
int *a,*b,*c,*d,*e,*f,*g;
{ *a=*b=*c=*d=*e=*f=*g=1; }


int get_value2(a,b,c,d,e,f,g)
int *a,*b,*c,*d,*e,*f,*g;
{ *a=*b=*c=*d=*e=*f=*g=2; }

int get_value3()
{ return 3; }
