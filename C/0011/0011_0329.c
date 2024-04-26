#include  <stdio.h>

#if INT64
#define int __int32
#endif

struct tagsc {
  signed char sc1 : 1;
  signed char sc2 : 2;
  signed char sc5 : 5;
};
struct taguc {
  unsigned char uc1 : 1;
  unsigned char uc2 : 2;
  unsigned char uc5 : 5;
};
struct tagssi {
  signed short ssi1 : 1;
  signed short ssi6 : 6;
  signed short ssi9 : 9;
};
struct tagusi {
  unsigned short usi1 : 1;
  unsigned short usi6 : 6;
  unsigned short usi9 : 9;
};
struct tagsli {
  signed int sli1 : 1;
  signed int sli14: 14;
  signed int sli17: 17;
};
struct taguli {
  unsigned int uli1 : 1;
  unsigned int uli14: 14;
  unsigned int uli17: 17;
};

  signed char          i1;
unsigned char          u1;
  signed int           i2;
unsigned int           u2;
  signed int           i4;
unsigned int           u4;

union {
  signed char  _sc;
  struct tagsc sc;
} rsc = { -1 };

union {
  unsigned char  _uc;
  struct   taguc uc;
} ruc = { 0xff };

union {
  unsigned short      _usi;
  struct   tagusi      usi;
} rusi = { 0xffff };

union {
signed   short        _ssi;
  struct   tagssi      ssi;
} rssi = { -1 };

union {
  unsigned int        _uli;
  struct   taguli      uli;
} r10 = { 0xffffffff };

union {
  signed int          _sli;
  struct   tagsli      sli;
} r9 = { -1 };

void sub1() { printf("%d ",i1); }
void sub2() { printf("%d ",i2); }
void sub3() { printf("%d ",i4); }

void sub5() { printf("%u ",u1); }
void sub6() { printf("%u ",u2); }
void sub7() { printf("%u ",u4); }

int main()
{
     i1=rsc.sc.sc1; sub1();       i2=rsc.sc.sc1; sub2();
     i4=rsc.sc.sc1; sub3();
     u1=rsc.sc.sc1; sub5();       u2=rsc.sc.sc1; sub6();
     u4=rsc.sc.sc1; sub7();

     i1=rsc.sc.sc2; sub1();       i2=rsc.sc.sc2; sub2();
     i4=rsc.sc.sc2; sub3();
     u1=rsc.sc.sc2; sub5();       u2=rsc.sc.sc2; sub6();
     u4=rsc.sc.sc2; sub7();

     i1=rsc.sc.sc5; sub1();       i2=rsc.sc.sc5; sub2();
     i4=rsc.sc.sc5; sub3();
     u1=rsc.sc.sc5; sub5();       u2=rsc.sc.sc5; sub6();
     u4=rsc.sc.sc5; sub7();

     i1=ruc.uc.uc1; sub1();       i2=ruc.uc.uc1; sub2();
     i4=ruc.uc.uc1; sub3();
     u1=ruc.uc.uc1; sub5();       u2=ruc.uc.uc1; sub6();
     u4=ruc.uc.uc1; sub7();

     i1=ruc.uc.uc2; sub1();       i2=ruc.uc.uc2; sub2();
     i4=ruc.uc.uc2; sub3();
     u1=ruc.uc.uc2; sub5();       u2=ruc.uc.uc2; sub6();
     u4=ruc.uc.uc2; sub7();

     i1=ruc.uc.uc5; sub1();       i2=ruc.uc.uc5; sub2();
     i4=ruc.uc.uc5; sub3();
     u1=ruc.uc.uc5; sub5();       u2=ruc.uc.uc5; sub6();
     u4=ruc.uc.uc5; sub7();

     i1=rssi.ssi.ssi1; sub1();    i2=rssi.ssi.ssi1; sub2();
     i4=rssi.ssi.ssi1; sub3();
     u1=rssi.ssi.ssi1; sub5();    u2=rssi.ssi.ssi1; sub6();
     u4=rssi.ssi.ssi1; sub7();

     i1=rssi.ssi.ssi6; sub1();    i2=rssi.ssi.ssi6; sub2();
     i4=rssi.ssi.ssi6; sub3();
     u1=rssi.ssi.ssi6; sub5();    u2=rssi.ssi.ssi6; sub6();
     u4=rssi.ssi.ssi6; sub7();

     i1=rssi.ssi.ssi9; sub1();    i2=rssi.ssi.ssi9; sub2();
     i4=rssi.ssi.ssi9; sub3();
     u1=rssi.ssi.ssi9; sub5();    u2=rssi.ssi.ssi9; sub6();
     u4=rssi.ssi.ssi9; sub7();

     i1=rusi.usi.usi1; sub1();    i2=rusi.usi.usi1; sub2();
     i4=rusi.usi.usi1; sub3();
     u1=rusi.usi.usi1; sub5();    u2=rusi.usi.usi1; sub6();
     u4=rusi.usi.usi1; sub7();

     i1=rusi.usi.usi6; sub1();    i2=rusi.usi.usi6; sub2();
     i4=rusi.usi.usi6; sub3();
     u1=rusi.usi.usi6; sub5();    u2=rusi.usi.usi6; sub6();
     u4=rusi.usi.usi6; sub7();

     i1=rusi.usi.usi9; sub1();    i2=rusi.usi.usi9; sub2();
     i4=rusi.usi.usi9; sub3();
     u1=rusi.usi.usi9; sub5();    u2=rusi.usi.usi9; sub6();
     u4=rusi.usi.usi9; sub7();

     i1=r9.sli.sli1; sub1();      i2=r9.sli.sli1; sub2();
     i4=r9.sli.sli1; sub3();
     u1=r9.sli.sli1; sub5();      u2=r9.sli.sli1; sub6();
     u4=r9.sli.sli1; sub7();

     i1=r9.sli.sli14; sub1();      i2=r9.sli.sli14; sub2();
     i4=r9.sli.sli14; sub3();
     u1=r9.sli.sli14; sub5();      u2=r9.sli.sli14; sub6();
     u4=r9.sli.sli14; sub7();

     i1=r9.sli.sli17; sub1();      i2=r9.sli.sli17; sub2();
     i4=r9.sli.sli17; sub3();
     u1=r9.sli.sli17; sub5();      u2=r9.sli.sli17; sub6();
     u4=r9.sli.sli17; sub7();

     i1=r10.uli.uli1; sub1();     i2=r10.uli.uli1; sub2();
     i4=r10.uli.uli1; sub3();
     u1=r10.uli.uli1; sub5();     u2=r10.uli.uli1; sub6();
     u4=r10.uli.uli1; sub7();

     i1=r10.uli.uli14; sub1();     i2=r10.uli.uli14; sub2();
     i4=r10.uli.uli14; sub3();
     u1=r10.uli.uli14; sub5();     u2=r10.uli.uli14; sub6();
     u4=r10.uli.uli14; sub7();

     i1=r10.uli.uli17; sub1();     i2=r10.uli.uli17; sub2();
     i4=r10.uli.uli17; sub3();
     u1=r10.uli.uli17; sub5();     u2=r10.uli.uli17; sub6();
     u4=r10.uli.uli17; sub7();

     puts(" PASS ");
}
