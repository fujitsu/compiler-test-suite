#include <stdio.h>
static   void used4 ();
static   void not_used1 () {
  printf("not_used_function\n") ;
}
static   void not_used2 () {
  not_used1() ;
  printf("not_used_function\n") ;
}
void not_used3 () {
}

static   void used1 () {
  printf("used1\n") ;
}
static   void used2 () {
  printf("used2\n") ;
}
static   void used3 () ;
void (*func_tab[2])()={used1,used3} ;
int main() {
  (*func_tab[0])();
  used2();
  (*func_tab[1])();
  used4();
}
static   void used3 () {
  printf("used3\n") ;
}
static   void used4 () {
  printf("used4\n") ;
}
