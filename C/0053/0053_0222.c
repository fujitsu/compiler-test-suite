#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    char *cp,c = 1;

    cp = &c;
    if (*cp == 1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *ip,i = 2;

    ip = &i;
    if (*ip == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    long int *ilp,il = 3;

    ilp = &il;
    if (*ilp == 3)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    short int *isp,is = 4;

    isp = &is;
    if (*isp == 4)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed char *scp,sc = 5;

    scp = &sc;
    if (*scp == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed int *sip,si = 6;

    sip = &si;
    if (*sip == 6)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed long int *silp,sil = 7;

    silp = &sil;
    if (*silp == 7)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    signed short int *sisp,sis = 8;

    sisp = &sis;
    if (*sisp == 8)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned char *ucp,uc = 9;

    ucp = &uc;
    if (*ucp == 9)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned int *uip,ui = 10;

    uip = &ui;
    if (*uip == 10)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned long int *uilp,uil = 11;

    uilp = &uil;
    if (*uilp == 11)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    unsigned short int *uisp,uis = 12;

    uisp = &uis;
    if (*uisp == 12)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int (*vecp)[2]; static int vec[2] = { 13,14 };

    vecp = &vec;
    if ((*vecp)[0] == 13)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int  i = 2;
    int **ptrp,*ptr = &i;

    ptrp = &ptr;
    if (**ptrp == 2)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    struct { int a; } *stp,st;

    st.a=5;
    stp = &st;
    if (stp->a == 5)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    union { int a; } *unp,un ;

    un.a=16;
    unp = &un;
    if (unp->a == 16)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    enum { emem1  } *enp,en = 0;

    enp = &en;
    if (*enp == emem1)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int (*fnp)(),fn();

    fnp = &fn;
    if ((*fnp)() == 18)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int *vecp; static int vec[2] = { 19,20 };

    vecp = vec;
    if (*vecp == 19)
        printf("***** \n");
      else
        printf("***** \n");
  }
  {
    int (*fnp)(),fnc();

    fnp = fnc;
    if ((*fnp)() == 20)
        printf("***** \n");
      else
        printf("***** \n");
  }
  printf("********** \n");
}

int fn()
{
  return 18;
}

int fnc()
{
  return 20;
}
