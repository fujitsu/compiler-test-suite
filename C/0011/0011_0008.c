#include <stdio.h>
 int sub4(int *pp, float yy);
 int sub3(int bb);
 int sub1(int *pp, float yy);
 int sun10();
 int sun9();
 int sun8();
 int sun7();
 int sun6();
 int sun5();
 int sun4();
 int sun3();
 int sun2();
 int sun1();
 struct estr {
  int ea;
  int eb;
  int ec;
  };
  struct estr *epp;
  struct ustr {
  unsigned int ea;
  unsigned int eb;
  unsigned int ec;
  };
  struct fstr {
  float  ea;
  double eb;
  int    ec;
  };
int 
main (void)
  {
  sun1();
  sun2();
  sun3();
  sun4();
  sun5();
  sun6();
  sun7();
  sun8();
  sun9();
  sun10();
  }
  /*------------------------------------------*/
  /*  load/load common expression is detected */
  /*------------------------------------------*/
  int 
sun1 (void)
  {
  int *p,a;
  float y;
  a=1;
  p=&a;
  sub1(p,y);
  return 0;
  }
  int 
sub1 (int *pp, float yy)
  {
  int  b,c;
  b=*pp;            /* load */
  yy=1;             /* yy is float */
  c=*pp;            /* load */
  if (b==c) printf(" *ok-1*   %d\n",b);
  else      printf(" *ng-1*   %d\n",c);

  return 0;
  }
  /*----------------------------------------*/
  /* delete of store/load common expression */
  /*----------------------------------------*/
  int 
sun2 (void)
  {
  struct estr *ep;
  int b;
  b=1;
  sub3(b);
  return 0;
  }
  int 
sub3 (int bb)
  {
  struct estr  epa;
  struct estr *ep;
  int  a,c;
  epp=&epa;
  ep=epp;
  a=1;
  epp->ea=bb;      /* store */
  ep->eb=1;
  epp->eb=1;
  c=epp->ea;       /* load  */
  if (c==bb) printf(" **ok-2** %d\n",bb);
  else       printf(" **ng-2** %d\n",c);

  return 0;
  }
  /*----------------------------------------------------------*/
  /*----------------------------------------------------------*/
  int 
sun3 (void)
  {
  int  i,j,d[10],*ip;
  unsigned char *q[10],*p;
  unsigned char a[10],b,c,ab[10];
  a[0]=0xf8;
  ip=&j;
  p=&a[0];
  q[6]=ab;
    for(i=0;i<10;i++)
    {
  /* test-01 */
      *q[6]=a[0];          /* store */
      d[5]=1;
      *ip=1;
      c=*q[6];               /* load  */
      if (c==0xf8) printf(" *ok-3* %c\n",c);
      else         printf(" *ng-3* %c\n",c);
  /* test-02 */
      d[5]=10;               /* store */
      *p='a';
      i=d[5];                /* load  */
      if (i==10) printf(" *ok-4* %d\n",i);
      else       printf(" *ng-4* %d\n",i);
    }
    return 0;
  }
  /*-------------------------------*/
  /*  delete of dead variable test */
  /*-------------------------------*/
  int 
sun4 (void)
  {
  int *p,a;
  float y;
  a=1;
  p=&a;
  sub4(p,y);
  return 0;
  }
  int 
sub4 (int *pp, float yy)
  {
  int  b,c,d;
  float x,z;
  yy=x+z;
  b=*pp;
  yy=1;
  c=*pp;
  if (c==1) printf(" *ok-5* %d\n",c);
  else      printf(" *ng-5* %d\n",c);

  return 0;
  }
  /*----------------------------------------*/
  /* delete of store/load common expression */
  /*----------------------------------------*/

static int zero = 0;  /* 2003.02.07 */

  int 
sun5 (void)
  {
  struct estr *ep;
  struct ustr *up;
  struct ustr  upa;
  int         *eq;
  struct estr  epa;
  int  a,b=zero,c,d,e;
  char *cc,cca;
  epp=&epa;
  up=&upa;
  ep=epp;
  cc=&cca;
  eq=&e;
  a=1;
  /* test-01 */
  epp->ea=b;       /* store */
  ep->eb=1;
  *eq=1;           /* not store/load common expression */
  d=epp->ea;       /* load  */
  if (d==b) printf(" *ok-6* \n");
  else      printf(" *ng-6* \n");
  /* test-02 */
  epp->eb=b;       /* store */
  up->eb=1;        /* not store/load common expression */
                   /* because unsigned int             */
  c=epp->eb;       /* load  */
  if (c==b) printf(" *ok-7* \n");
  else      printf(" *ng-7* \n");
  /* test-03 */
  epp->ec=1;       /* store */
  *cc='a';         /* not store/load common expression */
                   /* because char type                */
  e=epp->ec;       /* load  */
  if (e==1) printf(" *ok-8* \n");
  else      printf(" *ng-8* \n");

  return 0;
  }
  /*----------------------------------------*/
  /* delete of store/load common expression */
  /*----------------------------------------*/
  int 
sun6 (void)
  {
  struct estr *ep;
  struct fstr fpa;
  int         *eq;
  struct estr  epa;
  struct fstr *fpp;
  int  a,b,c;
  b=8;
  epp=&epa;
  fpp=&fpa;
  ep=epp;
  a=1;
  epp->ea=b;       /* store */
  epp->eb=1;
  fpp->ea=1.0;
  c=epp->ea;       /* load  */
  if (c==8) printf(" *ok-8* %d\n",b);
  else      printf(" *ng-8* %d\n",c);

  return 0;
  }
  /*--------------------------------------------*/
  /*--------------------------------------------*/
  int 
sun7 (void)
  {
  struct s1
  {
     float     *si;
     double    *sp;
     struct s1 *ss1;
  };
  struct s1 *s;
  struct s1  ss1a;
  double c1,*c2;
  float  f1;
  struct s1  sa;
  /* test-01 */
  c1=8.0;
  s=&sa;
  s->si=&f1;
  s->ss1=&ss1a;
  s->ss1->sp=&c1;
  *(s->si)=1.0;           /* store */
  *(s->ss1->sp)=2.0;
  f1=*(s->si);            /* load  */
  if (f1==1.0) printf(" *ok-9* c1 = %e\n",f1);
  else         printf(" *ng-9* c1 = %e\n",f1);
  /* test-02 */
  s->sp=&c1;              /* store */
  s->ss1->si=&f1;
  c2=s->sp;               /* load  */
  if (*c2==2.0) printf(" *ok-10* *c2 = %e\n",*c2);
  else          printf(" *ng-10* *c2 = %e\n",*c2);

  return 0;
  }
  /*--------------------------------------------*/
  /*--------------------------------------------*/
  int 
sun8 (void)
  {
  struct s1
  {
     float     si[5];
     unsigned char      *sp;
     struct s1 *ss1;
  };
  struct s1 *s;
  struct s1  sa;
  struct s1  ssa;
  unsigned char   c1,*c2;
  /* test-01 */
  c1=0xf7;                /* store */
  s=&sa;                  /* store */
  s->ss1=&ssa;            /* store */
  s->sp=&c1;              /* store */
  s->si[2]=1.0;
  c2=s->sp;               /* load  */
  if (*c2==0xf7) printf(" *ok-11* *c2 = %c\n",*c2);
  else           printf(" *ng-11* *c2 = %c\n",*c2);

  return 0;
  }
  /*--------------------------------------------*/
  /*--------------------------------------------*/
  int 
sun9 (void)
  {
  struct s1
  {
     float     si[5];
     char      *sp;
     struct s1 *ss1;
  };
  struct s1 *s;
  struct s1  sa;
  float  c1;
  char   spa;
  s=&sa;
  s->sp=&spa;
  s->ss1=&sa;
  /* test-01 */
  s->si[1]=1.0;         /* store */
  s->si[2]=2.0;
  c1=s->si[1];          /* load  */
  if (c1==1.0) printf(" *ok-12* c1 = %e\n",c1);
  else         printf(" *ng-12* c1 = %e\n",c1);

  return 0;
  }
  /*--------------------------------------------*/
  /*--------------------------------------------*/
  int 
sun10 (void)
  {
  struct s1
  {
     float     si[5];
     char      *sp;
     int        it;
     struct s1 *ss1;
  };
  struct s1 *s;
  struct s1 sa;
  float  c1,c2,c3,c4,c5,c6;
  int    *i1;
  char   spa;
  s=&sa;
  s->sp=&spa;
  s->ss1=s;
  i1=&(s->it);
  /* test-01 */
  c1=1.0;
  c4=c1;
  *i1=1;                  /* store */
  c2=c1;
  if (c2==1.0) printf(" *ok-13* \n");
  else         printf(" *ng-13* \n");
  /* test-02 */
  c3=c4;
  s->it=2;                /* store */
  c5=c3;
  if (c5==1.0) printf(" *ok-14* \n");
  else         printf(" *ng-14* \n");

  return 0;
}

