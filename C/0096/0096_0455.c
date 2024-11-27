#include  <stdio.h>

#include <signal.h>
#include <setjmp.h>
jmp_buf env;
int main(void)
{
    volatile int zero = 0;
    int rtncd,*p1,s1,i=2;
    void func1();
    int  func2();
    signal(SIGFPE,func1);
    rtncd=setjmp(env);
    if(rtncd!=0) {
      printf("_____ RETURN CODE = %d _____\n",rtncd);
      if(rtncd==999)
        printf("_____  OK ___________\n");
      else
        printf("_____  NG ___________\n");
      return 0;
    } ;

    

    s1=10;
    goto l1;
l2: s1=0;
    goto l3;
    s1=s1+20;    
l1: s1=s1*10;
    goto l2;
l3: if(s1==0)
      printf("_____ CHECK 1 OK ____________\n");
    else {
      printf("_____ CHECK 1 NG ____________\n");
      printf("_____ S1 = %d ______________\n",s1);
      }

#if defined(__aarch64__)
    func1();
#else
    i=func2()/zero; 
#endif
    printf("NG %d\n", i);
}
void func1()
{
  longjmp(env,999);
}
int func2()
{
  return -1;
}

