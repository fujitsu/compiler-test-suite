#define ENDMARK 99
#include<stdio.h>
#include<signal.h>
#include<stdlib.h>
#include<setjmp.h>
jmp_buf env;
void ok(int i) {
  switch(i) {
    case SIGABRT:
                 printf(" (1) ok\n"); break;
    case SIGFPE :
                 printf(" (2) ok\n"); break;
    case SIGILL :
                 printf(" (3) ok\n"); break;
    case SIGSEGV:
                 printf(" (4) ok\n"); break;
    case SIGTERM:
                 printf(" (5) ok\n"); break;
    case ENDMARK:
    default :    printf(" ng\n");
  }
  longjmp(env,1);
}
void fsigabrt(int c) {
  if (c==SIGABRT) {
    ok(c);
  }
  else
    printf(" (1) ng\n");
}
void fsigfpe(int c) {
  if (c==SIGFPE) {
    ok(c);
  }
  else
    printf(" (2) ng\n");
}
void fsigill(int c) {
  if (c==SIGILL) {
    ok(c);
  }
  else
    printf(" (3) ng\n");
}
void fsigsegv(int c) {
  if (c==SIGSEGV) {
    ok(c);
  }
  else
    printf(" (4) ng\n");
}
void fsigterm(int c) {
  if (c==SIGTERM) {
    ok(c);
  }
  else
    printf(" (5) ng\n");
}
int main( ) {
  int ret,i;
  static int sigkind[]={SIGABRT,SIGFPE,SIGILL,SIGSEGV,SIGTERM,ENDMARK};
  signal(SIGABRT,fsigabrt);
  signal(SIGFPE, fsigfpe);
  signal(SIGILL, fsigill);
  signal(SIGSEGV,fsigsegv);
  signal(SIGTERM,fsigterm);
  for (i=0; ;i++) {
    switch(sigkind[i]) {
      case SIGABRT : if (!setjmp(env)) ret=raise(SIGABRT);
                     else break;
      case SIGFPE  : if (!setjmp(env)) ret=raise(SIGFPE );
                     else break;
      case SIGILL  : if (!setjmp(env)) ret=raise(SIGILL );  
                     else break;
      case SIGSEGV : if (!setjmp(env)) ret=raise(SIGSEGV); 
                     else break;
      case SIGTERM : if (!setjmp(env)) ret=raise(SIGTERM);
                     else break;
      case ENDMARK : exit(0); break; 
      default      : printf(" ng\n");
                     exit(1);
    }
  }               
}    
