#include <stdio.h>

   
#if INT64 | LONG64 
#define INT __int32
#elif __x86_64__ || __aarch64__ || _LP64
#define INT int
#else
#define INT long
#endif

union U {
  struct {
    INT          b1;
    unsigned INT b2;
  } b;
  long long int a;
} ;
struct S {
  long long int a;
};
int main( ) {
  INT sub0( ),sub1( ),r1,r2;
  if ((r1=sub0( ))==(r2=sub1( ))) printf(" ok\n");
  else                  printf(" ng sub0( )=%d,sub1( )=%d\n",r1,r2);
}
INT sub0( ){
  union  U p[20];
  struct S r[20];
  long long int z,x,y,ok,factorial( );
  ok=0;
  for (z=0; z<20; z++) {
    p[z].a=factorial(z);
    r[z].a=factorial(z);
  }
  for (z=0; z<20; z++) {
    if (*(INT *)&(r[z].a)        == p[z].b.b1
        &&  *(((INT*)&(r[z].a))+1) ==
#if INT64
        (INT)
#endif
        p[z].b.b2) ok++; 
    else 
      printf("%.8x %.8x <--> %.8x %.8x\n" ,p[z].b.b1,p[z].b.b2
             , *(INT*)&(r[z].a), *(((INT*)&(r[z].a))+1));
  }
  return (ok);

}
union  U p[20];
struct S r[20];
INT sub1( ){
  long long int z,x,y,ok,factorial( );
  ok=0;
  for (z=0; z<20; z++) {
    p[z].a=factorial(z);
    r[z].a=factorial(z);

    if (*(INT *)&(r[z].a)        == p[z].b.b1
        &&  *(((INT*)&(r[z].a))+1) ==
#if INT64
        (INT)
#endif
        p[z].b.b2) ok++; 
    else 
      printf("%.8x %.8x <--> %.8x %.8x\n" ,p[z].b.b1,p[z].b.b2
             , *(INT*)&(r[z].a), *(((INT*)&(r[z].a))+1));
  }
  return (ok);

}


long long int factorial(a) long long int a;{
  if (a)
    return(a * factorial(a-1LL));
  else
    return(1LL);
}
