#include <math.h>
#include  <stdio.h>
#include  <stdlib.h>


union t00 {
       char      i1; 
     short int   i2; 
       int       i4; 
    unsigned char      u1; 
    unsigned short int u2; 
    unsigned int       u4; 
    float              r4;
    double             r8;
    long  double       r16;
  struct t01 {
             char    bi1:1; 
     short   int     bi2:4; 
             int     bi4:8;
    unsigned       char    bu1:1; 
    unsigned short int     bu2:4; 
    unsigned       int     bu4:8; 
    struct t02 {
             char    *pi1; 
       short int     *pi2; 
             int     *pi4; 
      unsigned       char  *pu1; 
      unsigned short int   *pu2; 
      unsigned       int   *pu4; 
      float                *pr4;
      double               *pr8;
      long  double         *pr16;
      struct t03 {
               char     ai1[10]; 
         short int      ai2[10]; 
               int      ai4[10]; 
        unsigned       char     au1[10]; 
        unsigned short int      au2[10]; 
        unsigned       int      au4[10]; 
        float    ar4[10];
        double   ar8[10];
        long  double   ar16[10];
        struct t04 {
                 char     *ai1[10]; 
           short int      *ai2[10]; 
                 int      *ai4[10]; 
          unsigned       char     *au1[10]; 
          unsigned short int      *au2[10]; 
          unsigned       int      *au4[10]; 
          float    *ar4[10];
          double   *ar8[10];
          long  double   *ar16[10];
        } s041;
        struct t04 s042;
      } s031;
      struct t03 s032;
    } s021;
    struct t02 s022;
  } s011;
  struct t01 s012;
} ;
struct t   {
  union t00 *s001;
  union t00 *s002;
};
int main()
{
  struct t f1( );
  struct t p;
  p.s001 =(union t00 *)malloc(sizeof(union t00));
  p.s002 =(union t00 *)malloc(sizeof(union t00));

  p.s001->i1  = 1;
  p=f1(p);
  if(p.s002->i1 == 1)
    printf ("**  ** (01) OK \n");
  else
    printf ("**  ** (01) NG \n");
  p.s001->r16 = 1.0;
  p=f1(p);
  if(p.s002->r16 == 1.0)
    printf ("**  ** (02) OK \n");
  else
    printf ("**  ** (02) NG \n");
  p.s001->s012.bu4=1;
  p=f1(p);
  if(p.s002->s012.bu4 == 1)
    printf ("**  ** (03) OK \n");
  else
    printf ("**  ** (03) NG \n");
  p.s001->s011.s021.pr16=&(p.s001->r16);
  p=f1(p);
  if(p.s002->s011.s021.pr16 == &(p.s001->r16))
    printf ("**  ** (04) OK \n");
  else
    printf ("**  ** (04) NG \n");
  p.s001->s011.s022.pr16=&(p.s001->r16);
  p=f1(p);
  if(p.s002->s011.s022.pr16 == &(p.s001->r16))
    printf ("**  ** (05) OK \n");
  else
    printf ("**  ** (05) NG \n");
exit (0);
}
struct t f1(p) struct t p; { 
  *(p.s002)=*(p.s001);
  return(p);
}
