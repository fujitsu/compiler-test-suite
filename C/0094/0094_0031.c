#include  <stdio.h>
#include  <stdlib.h>
struct t00 {
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
     signed        char    bi1:1; 
     signed short   int     bi2:4; 
     signed         int     bi4:8;
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
  struct t00 *s001;
  struct t00 *s002;
};
int main()
{
  struct t f1( );
  struct t p;
  p.s001 =(struct t00 *)malloc(sizeof(struct t00));
  p.s002 =(struct t00 *)malloc(sizeof(struct t00));
/**/
  p.s001->i1  = 1;
  p.s001->u1  = 1;
  p.s001->i2  = 1;
  p.s001->u2  = 1;
  p.s001->i4  = 1;
  p.s001->u4  = 1;
  p.s001->r4  = 1.0;
  p.s001->r8  = 1.0;
  p.s001->r16 = 1.0;
  p.s001->s011.bi1=1;
  p.s001->s011.bu1=1;
  p.s001->s011.bi2=1;
  p.s001->s011.bu2=1;
  p.s001->s011.bi4=1;
  p.s001->s011.bu4=1;
  p.s001->s012.bi1=1;
  p.s001->s012.bu1=1;
  p.s001->s012.bi2=1;
  p.s001->s012.bu2=1;
  p.s001->s012.bi4=1;
  p.s001->s012.bu4=1;
  p.s001->s011.s021.pi1=&(p.s001->i1);
  p.s001->s011.s021.pu1=&(p.s001->u1);
  p.s001->s011.s021.pi2=&(p.s001->i2);
  p.s001->s011.s021.pu2=&(p.s001->u2);
  p.s001->s011.s021.pi4=&(p.s001->i4);
  p.s001->s011.s021.pu4=&(p.s001->u4);
  p.s001->s011.s021.pr4=&(p.s001->r4);
  p.s001->s011.s021.pr8=&(p.s001->r8);
  p.s001->s011.s021.pr16=&(p.s001->r16);
  p.s001->s011.s022.pi1=&(p.s001->i1);
  p.s001->s011.s022.pu1=&(p.s001->u1);
  p.s001->s011.s022.pi2=&(p.s001->i2);
  p.s001->s011.s022.pu2=&(p.s001->u2);
  p.s001->s011.s022.pi4=&(p.s001->i4);
  p.s001->s011.s022.pu4=&(p.s001->u4);
  p.s001->s011.s022.pr4=&(p.s001->r4);
  p.s001->s011.s022.pr8=&(p.s001->r8);
  p.s001->s011.s022.pr16=&(p.s001->r16);
 p=f1(p);
  if(p.s002->i1 == 1
  && p.s002->u1  ==1
  && p.s002->i2  ==1
  && p.s002->u2  ==1
  && p.s002->i4  ==1
  && p.s002->u4  ==1
  && p.s002->r4  ==1.0
  && p.s002->r8  ==1.0
  && p.s002->r16 ==1.0
  && p.s002->s011.bi1==-1
  && p.s002->s011.bu1==1
  && p.s002->s011.bi2==1
  && p.s002->s011.bu2==1
  && p.s002->s011.bi4==1
  && p.s002->s011.bu4==1
  && p.s002->s012.bi1==-1
  && p.s002->s012.bu1==1
  && p.s002->s012.bi2==1
  && p.s002->s012.bu2==1
  && p.s002->s012.bi4==1
  && p.s002->s012.bu4==1
  && p.s002->s011.s021.pi1==&(p.s001->i1)
  && p.s002->s011.s021.pu1==&(p.s001->u1)
  && p.s002->s011.s021.pi2==&(p.s001->i2)
  && p.s002->s011.s021.pu2==&(p.s001->u2)
  && p.s002->s011.s021.pi4==&(p.s001->i4)
  && p.s002->s011.s021.pu4==&(p.s001->u4)
  && p.s002->s011.s021.pr4==&(p.s001->r4)
  && p.s002->s011.s021.pr8==&(p.s001->r8)
  && p.s002->s011.s021.pr16==&(p.s001->r16)
  && p.s002->s011.s022.pi1==&(p.s001->i1)
  && p.s002->s011.s022.pu1==&(p.s001->u1)
  && p.s002->s011.s022.pi2==&(p.s001->i2)
  && p.s002->s011.s022.pu2==&(p.s001->u2)
  && p.s002->s011.s022.pi4==&(p.s001->i4)
  && p.s002->s011.s022.pu4==&(p.s001->u4)
  && p.s002->s011.s022.pr4==&(p.s001->r4)
  && p.s002->s011.s022.pr8==&(p.s001->r8)
  && p.s002->s011.s022.pr16==&(p.s001->r16)
  )
  printf ("** \n");
else
  printf ("** \n");

  free(p.s001);
  free(p.s002);
}
struct t f1(p) struct t p; { 
  *(p.s002)=*(p.s001);
  return(p);
}
