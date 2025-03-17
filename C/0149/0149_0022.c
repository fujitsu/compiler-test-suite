#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  printf("********** CATEGORY TEST START **********\n");
  {
    char *cp,c = 1;
 
    cp = &c;
    if (*cp == 1)
        printf("***** CATEGORY - 01 ***** O K *****\n");
      else
        printf("***** CATEGORY - 01 ***** N G *****\n");
  }
  {
    int *ip,i = 2;
 
    ip = &i;
    if (*ip == 2)
        printf("***** CATEGORY - 02 ***** O K *****\n");
      else
        printf("***** CATEGORY - 02 ***** N G *****\n");
  }
  {
    long int *ilp,il = 3;
 
    ilp = &il;
    if (*ilp == 3)
        printf("***** CATEGORY - 03 ***** O K *****\n");
      else
        printf("***** CATEGORY - 03 ***** N G *****\n");
  }
  {
    short int *isp,is = 4;
 
    isp = &is;
    if (*isp == 4)
        printf("***** CATEGORY - 04 ***** O K *****\n");
      else
        printf("***** CATEGORY - 04 ***** N G *****\n");
  }
  {
    signed char *scp,sc = 5;
 
    scp = &sc;
    if (*scp == 5)
        printf("***** CATEGORY - 05 ***** O K *****\n");
      else
        printf("***** CATEGORY - 05 ***** N G *****\n");
  }
  {
    signed int *sip,si = 6;
 
    sip = &si;
    if (*sip == 6)
        printf("***** CATEGORY - 06 ***** O K *****\n");
      else
        printf("***** CATEGORY - 06 ***** N G *****\n");
  }
  {
    signed long int *silp,sil = 7;
 
    silp = &sil;
    if (*silp == 7)
        printf("***** CATEGORY - 07 ***** O K *****\n");
      else
        printf("***** CATEGORY - 07 ***** N G *****\n");
  }
  {
    signed short int *sisp,sis = 8;
 
    sisp = &sis;
    if (*sisp == 8)
        printf("***** CATEGORY - 08 ***** O K *****\n");
      else
        printf("***** CATEGORY - 08 ***** N G *****\n");
  }
  {
    unsigned char *ucp,uc = 9;
 
    ucp = &uc;
    if (*ucp == 9)
        printf("***** CATEGORY - 09 ***** O K *****\n");
      else
        printf("***** CATEGORY - 09 ***** N G *****\n");
  }
  {
    unsigned int *uip,ui = 10;
 
    uip = &ui;
    if (*uip == 10)
        printf("***** CATEGORY - 10 ***** O K *****\n");
      else
        printf("***** CATEGORY - 10 ***** N G *****\n");
  }
  {
    unsigned long int *uilp,uil = 11;
 
    uilp = &uil;
    if (*uilp == 11)
        printf("***** CATEGORY - 11 ***** O K *****\n");
      else
        printf("***** CATEGORY - 11 ***** N G *****\n");
  }
  {
    unsigned short int *uisp,uis = 12;
 
    uisp = &uis;
    if (*uisp == 12)
        printf("***** CATEGORY - 12 ***** O K *****\n");
      else
        printf("***** CATEGORY - 12 ***** N G *****\n");
  }
  {
    int (*vecp)[2]; static int vec[2] = { 13,14 };
 
    vecp = &vec;
    if ((*vecp)[0] == 13)
        printf("***** CATEGORY - 13 ***** O K *****\n");
      else
        printf("***** CATEGORY - 13 ***** N G *****\n");
  }
  {
    int  i = 2;
    int **ptrp,*ptr = &i;
 
    ptrp = &ptr;
    if (**ptrp == 2)
        printf("***** CATEGORY - 14 ***** O K *****\n");
      else
        printf("***** CATEGORY - 14 ***** N G *****\n");
  }
  {
    struct { int a; } *stp,st;
 
    st.a=5;
    stp = &st;
    if (stp->a == 5)
        printf("***** CATEGORY - 15 ***** O K *****\n");
      else
        printf("***** CATEGORY - 15 ***** N G *****\n");
  }
  {
    union { int a; } *unp,un ;
 
    un.a=16;
    unp = &un;
    if (unp->a == 16)
        printf("***** CATEGORY - 16 ***** O K *****\n");
      else
        printf("***** CATEGORY - 16 ***** N G *****\n");
  }
  {
    enum { emem1  } *enp,en = 0;
 
    enp = &en;
    if (*enp == emem1)
        printf("***** CATEGORY - 17 ***** O K *****\n");
      else
        printf("***** CATEGORY - 17 ***** N G *****\n");
  }
  {
    int (*fnp)(),fn();
 
    fnp = &fn;
    if ((*fnp)() == 18)
        printf("***** CATEGORY - 18 ***** O K *****\n");
      else
        printf("***** CATEGORY - 18 ***** N G *****\n");
  }
  {
    int *vecp; static int vec[2] = { 19,20 };
 
    vecp = vec;
    if (*vecp == 19)
        printf("***** CATEGORY - 19 ***** O K *****\n");
      else
        printf("***** CATEGORY - 19 ***** N G *****\n");
  }
  {
    int (*fnp)(),fnc();
 
    fnp = fnc;
    if ((*fnp)() == 20)
        printf("***** CATEGORY - 20 ***** O K *****\n");
      else
        printf("***** CATEGORY - 20 ***** N G *****\n");
  }
  printf("********** CATEGORY TEST  END  **********\n");
exit (0);
}
 
int fn()
{
  return 18;
}
 
int fnc()
{
  return 20;
}
