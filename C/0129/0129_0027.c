#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct t00 {
     char      i1; 
     short int i2; 
     int       i4; 
    unsigned char      u1; 
    unsigned short int u2; 
    unsigned int       u4; 
    float              r4;
    double             r8;
    long  double       r16;
  struct t01 {
    char                   bi1:1; 
    short   int            bi2:4; 
    int                    bi4:8;
    unsigned       char    bu1:1; 
    unsigned short int     bu2:4; 
    unsigned       int     bu4:8; 
    struct t02 {           
      char                 *pi1; 
      short int            *pi2; 
      int                  *pi4; 
      unsigned       char  *pu1; 
      unsigned short int   *pu2; 
      unsigned       int   *pu4; 
      float                *pr4;
      double               *pr8;
      long  double         *pr16;
      struct t03 {         
        char                ai1[10]; 
        short int           ai2[10]; 
        int                 ai4[10]; 
        unsigned       char     au1[10]; 
        unsigned short int      au2[10]; 
        unsigned       int      au4[10]; 
        float                   ar4[10];
        double                  ar8[10];
        long  double            ar16[10];
        struct t04 {             
          char                    *ai1[10]; 
          short int               *ai2[10]; 
          int                     *ai4[10]; 
          unsigned       char     *au1[10]; 
          unsigned short int      *au2[10]; 
          unsigned       int      *au4[10]; 
          float                   *ar4[10];
          double                  *ar8[10];
          long  double            *ar16[10];
        } s041;
        struct t04 s042;
      } s031;
      struct t03 s032;
    } s021;
    struct t02 s022;
  } s011;
  struct t01 s012;
} ;
struct t00 x,y;
long double ld;
int main()
{
  void result_chk( );
  struct t00 f1( ),assign1( ),assign2( );
  auto struct t00 q;
  auto struct t00 p;

 q=f1(assign2(assign1(x,9),9));
 result_chk(q,1);
 

 p=f1(q);
 result_chk(p,2);
 

 y=f1(p);
 result_chk(y,3);
 

 x=f1(y);
 result_chk(x,4);
 
exit (0);
}
struct t00 assign1(p,i) struct t00 p; int i; {
  p.r16 = 1.0;
  p.s011.bu4=1;
  p.s011.s021.pr16=&ld;
  p.s011.s022.pr16=&ld;
  p.s011.s021.s031.ar16[i]=1.0;
  p.s011.s021.s032.ar16[i]=1.0;
  p.s011.s022.s031.ar16[i]=1.0;
  p.s011.s022.s032.ar16[i]=1.0;
  p.s011.s021.s031.s041.ar16[i]=&ld;
  p.s011.s021.s031.s042.ar16[i]=&ld;
  p.s011.s021.s032.s041.ar16[i]=&ld;
  p.s011.s021.s032.s042.ar16[i]=&ld;
  p.s011.s022.s031.s041.ar16[i]=&ld;
  p.s011.s022.s031.s042.ar16[i]=&ld;
  p.s011.s022.s032.s041.ar16[i]=&ld;
  p.s011.s022.s032.s042.ar16[i]=&ld;
  return(p);
}
struct t00 assign2(p,i) struct t00 p; int i; {
  p.s012.bu4=1;
  p.s012.s021.pr16=&ld;
  p.s012.s022.pr16=&ld;
  p.s012.s021.s031.ar16[i]=1.0;
  p.s012.s021.s032.ar16[i]=1.0;
  p.s012.s022.s031.ar16[i]=1.0;
  p.s012.s022.s032.ar16[i]=1.0;
  p.s012.s021.s031.s041.ar16[i]=&ld;
  p.s012.s021.s031.s042.ar16[i]=&ld;
  p.s012.s021.s032.s041.ar16[i]=&ld;
  p.s012.s021.s032.s042.ar16[i]=&ld;
  p.s012.s022.s031.s041.ar16[i]=&ld;
  p.s012.s022.s031.s042.ar16[i]=&ld;
  p.s012.s022.s032.s041.ar16[i]=&ld;
  p.s012.s022.s032.s042.ar16[i]=&ld;
  return(p);
}
void result_chk(q,i) struct t00 q;int i; {
if (
      q.r16 ==1.0
  &&  q.s011.bu4==1
  &&  q.s011.s021.pr16==&ld
  &&  q.s011.s022.pr16==&ld
  &&  q.s011.s021.s031.ar16[9]==1.0
  &&  q.s011.s021.s032.ar16[9]==1.0
  &&  q.s011.s022.s031.ar16[9]==1.0
  &&  q.s011.s022.s032.ar16[9]==1.0
  &&  q.s011.s021.s031.s041.ar16[9]==&ld
  &&  q.s011.s021.s031.s042.ar16[9]==&ld
  &&  q.s011.s021.s032.s041.ar16[9]==&ld
  &&  q.s011.s021.s032.s042.ar16[9]==&ld
  &&  q.s011.s022.s031.s041.ar16[9]==&ld
  &&  q.s011.s022.s031.s042.ar16[9]==&ld
  &&  q.s011.s022.s032.s041.ar16[9]==&ld
  &&  q.s011.s022.s032.s042.ar16[9]==&ld
  &&  q.s012.bu4==1
  &&  q.s012.s021.pr16==&ld
  &&  q.s012.s022.pr16==&ld
  &&  q.s012.s021.s031.ar16[9]==1.0
  &&  q.s012.s021.s032.ar16[9]==1.0
  &&  q.s012.s022.s031.ar16[9]==1.0
  &&  q.s012.s022.s032.ar16[9]==1.0
  &&  q.s012.s021.s031.s041.ar16[9]==&ld
  &&  q.s012.s021.s031.s042.ar16[9]==&ld
  &&  q.s012.s021.s032.s041.ar16[9]==&ld
  &&  q.s012.s021.s032.s042.ar16[9]==&ld
  &&  q.s012.s022.s031.s041.ar16[9]==&ld
  &&  q.s012.s022.s031.s042.ar16[9]==&ld
  &&  q.s012.s022.s032.s041.ar16[9]==&ld
  &&  q.s012.s022.s032.s042.ar16[9]==&ld
  )
  printf ("**  (%i) ** OK \n",i);
else
  printf ("**  (%i) ** NG \n",i);
}
struct t00 f1(p) struct t00 p; { 
  return(p);
}
