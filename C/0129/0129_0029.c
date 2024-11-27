#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


union t00 {
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
union t00 x,y;
long double ld;
int main()
{
  void result_chk( );
  union t00 f1( ),assign1( ),assign2( );
  auto union t00 q;
  auto union t00 p;

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
union t00 assign1(p,i) union t00 p; int i; {
  p.s011.s022.s032.s042.ar16[i]=&ld;
  return(p);
}
union t00 assign2(p,i) union t00 p; int i; {
  p.s012.s022.s032.s042.ar16[i]=&ld;
  return(p);
}
void result_chk(q,i) union t00 q;int i; {
if (
   q.s012.s022.s032.s042.ar16[9]==&ld
  )
  printf ("**  (%i) ** OK \n",i);
else
  printf ("**  (%i) ** NG \n",i);
}
union t00 f1(p) union t00 p; { 
  return(p);
}
