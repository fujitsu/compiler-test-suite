#include <stdlib.h>
#include <stdio.h>
int g ;
void eee() { printf("%d==2 OK?\n",g) ; exit(0) ; }

void foo() {
  for(;;) {
    if ( g ) g++;
    eee() ;
    g++ ;
  }
}
int main() { g=1 ; foo() ; }
