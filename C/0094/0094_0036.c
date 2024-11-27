#include  <stdio.h>

static void f1(void);

int main( ) { void f1( ),f2( );
   f1();
   f2();
}
static void f1( )  {
     printf ("*** \n"); 
}
extern       void f2( )  {
     printf ("*** \n"); 
}
