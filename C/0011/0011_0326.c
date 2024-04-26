#include <stdlib.h>
#include  <stdio.h>
void print(unsigned int i);
void print2(unsigned int i, unsigned int j);
void sub_main(int six, int siy);

#if INT64
#define int __int32
#endif

int g1,g2;
int main()
{
    puts(" XOPT(EVAL)              NG            ");
    puts("123        NG              ");
    sub_main(0x01,0x01);
    sub_main(0xff,0x01);
    sub_main(0x100,0xff);
    sub_main(0xffff,0x1234);
    sub_main(-2,2);
    sub_main(1,-1);
    sub_main(0x10000000,0x10000020);
    sub_main(0xffffffff,0xffffffff);
    puts(" PASS ");
}

void sub_main(int six, int siy)
{
#ifdef v10
    char               scx,scy,scz;
#else
    signed char        scx,scy,scz;
#endif
    unsigned char      ucx,ucy,ucz;
    short              ssx,ssy,ssz;
    short unsigned     usx,usy,usz;
    int                        siz;
    unsigned int       uix,uiy,uiz;

#if INT64
    printf("SIX %X SIY %X \n",0xffffffff&six,0xffffffff&siy);
#else
    printf("SIX %X SIY %X \n",six,siy);
#endif
    g1 =six;g2 =siy;
    scx=six;scy=siy;
    ucx=six;ucy=siy;
    ssx=six;ssy=siy;
    usx=six;usy=siy;
    six=six;siy=siy;
    uix=six;uiy=siy;

    print2(six,siy);
    print2(scx,scy);
    print2(ucx,ucy);
    print2(ssx,ssy);
    print2(usx,usy);
    print2(uix,uiy);

    scz=-scx;        print(scz);
    scz=scx+scy;     print(scz);
    scz=scx-scy;     print(scz);
    scz=scx*scy;     print(scz);
    scz=scx/scy;     print(scz);
    scz=scx%scy;     print(scz);
    ucz=-ucx;        print(ucz);
    ucz=ucx+ucy;     print(ucz);
    ucz=ucx-ucy;     print(ucz);
    ucz=ucx*ucy;     print(ucz);
    ucz=ucx/ucy;     print(ucz);
    ucz=ucx%ucy;     print(ucz);
    ssz=-ssx;        print(ssz);
    ssz=ssx+ssy;     print(ssz);
    ssz=ssx-ssy;     print(ssz);
    ssz=ssx*ssy;     print(ssz);
    ssz=ssx/ssy;     print(ssz);
    ssz=ssx%ssy;     print(ssz);
    usz=-usx;        print(usz);
    usz=usx+usy;     print(usz);
    usz=usx-usy;     print(usz);
    usz=usx*usy;     print(usz);
    usz=usx/usy;     print(usz);
    usz=usx%usy;     print(usz);
    siz=-six;        print(siz);
    siz=six+siy;     print(siz);
    siz=six-siy;     print(siz);
    siz=six*siy;     print(siz);
    siz=six/siy;     print(siz);
    siz=six%siy;     print(siz);
    uiz=-uix;        print(uiz);
    uiz=uix+uiy;     print(uiz);
    uiz=uix-uiy;     print(uiz);
    uiz=uix*uiy;     print(uiz);
    uiz=uix/uiy;     print(uiz);
    uiz=uix%uiy;     print(uiz);
}
void print2(unsigned int i, unsigned int j)
{
    print(i);
    print(j);
}

static int count=0;
static unsigned int data[] = {
         1,         1,         1,         1,         1,
         1,         1,         1,         1,         1,
         1,         1,4294967295,         2,         0,
#ifdef v10
         1,         1,         0,4294967295,         2,
#else
         1,         1,         0,       255,         2,
#endif
         0,         1,         1,         0,4294967295,
         2,         0,         1,         1,         0,
#ifdef v10
4294967295,         2,         0,         1,         1,
#else
     65535,         2,         0,         1,         1,
#endif
         0,4294967295,         2,         0,         1,
         1,         0,4294967295,         2,         0,
         1,         1,         0,       255,         1,
#ifdef v10
       255,         1,       255,         1,       255,
#else
4294967295,         1,       255,         1,       255,
#endif
         1,       255,         1,       255,         1,
#ifdef v10
4294967041,       256,       254,       255,       255,
         0,4294967041,       256,       254,       255,
       255,         0,4294967041,       256,       254,
       255,       255,         0,4294967041,       256,
#else
         1,   256-256,   254-256,   255-256,   255-256,
         0,         1,   256-256,       254,       255,
       255,         0,4294967041,       256,       254,
       255,       255,         0,     65281,       256,
#endif
       254,       255,       255,         0,4294967041,
       256,       254,       255,       255,         0,
4294967041,       256,       254,       255,       255,
#ifdef v10
         0,       256,       255,         0,       255,
#else
         0,       256,       255,         0,        -1,      /* 99 */
#endif
         0,       255,       256,       255,       256,
#ifdef v10
       255,       256,       255,         0,       255,
4294967041,         0,         0,         0,         0,
       255,4294967041,         0,         0,         0,
4294967040,       511,         1,     65280,         1,
         1,4294967040,       511,         1,     65280,
#else
       255,       256,       255,         0,        -1,      /* 109 */
         1,         0,         0,         0,         0,
       255,         1,         0,         0,         0,
4294967040,       511,         1,0xffffff00,         1,      /* 120 */
         1,     65280,       511,         1,     65280,
#endif
         1,         1,4294967040,       511,         1,
     65280,         1,         1,4294967040,       511,
         1,     65280,         1,         1,     65535,
#ifdef v10
      4660,       255,        52,       255,        52,
     65535,      4660,     65535,      4660,     65535,
      4660,4294967041,       307,       203,     13260,
         4,        47,4294967041,       307,       203,
     13260,         4,        47,4294901761,     70195,
     60875, 305393100,        14,       295,4294901761,
     70195,     60875, 305393100,        14,       295,
#else
      4660,        -1,        52,       255,        52,   /* 147 */
        -1,    0x1234,     65535,      4660,     65535,
      4660,         1,        51,       -53,       -52,
         0,        -1,         1,        51,       203,
       204,         4,        47,         1,      4659,
     -4661,     -4660,         0,        -1,         1,
      4659,     60875,     60876,        14,       295,
#endif
4294901761,     70195,     60875, 305393100,        14,
       295,4294901761,     70195,     60875, 305393100,
#ifdef v10
        14,       295,4294967294,         2,       254,
#else
        14,       295,4294967294,         2,        -2,
#endif
         2,       254,         2,4294967294,         2,
#ifdef v10
     65534,         2,4294967294,         2,4294967042,
       256,       252,       508,       127,         0,
4294967042,       256,       252,       508,       127,
#else
     65534,         2,4294967294,         2,         2,  /* 200 */
         0,        -4,        -4,        -1,         0,
         2,         0,       252,       252,       127,
#endif
         0,         2,         0,4294967292,4294967292,
#ifdef v10
4294967295,         0,4294901762,     65536,     65532,
    131068,     32767,         0,         2,         0,
#else
4294967295,         0,         2,         0,     65532,
     65532,     32767,         0,         2,         0,
#endif
4294967292,4294967292,4294967295,         0,         2,
         0,4294967292,4294967292,2147483647,         0,
#ifdef v10
         1,4294967295,         1,       255,         1,
#else
         1,4294967295,         1,        -1,         1,
#endif
       255,         1,4294967295,         1,     65535,
#ifdef v10
         1,4294967295,4294967295,       256,4294967042,
       255,         0,         1,4294967295,       256,
4294967042,       255,         0,         1,4294967295,
#else
         1,4294967295,4294967295,         0,         2,
        -1,        -1,         0,       255,         0,
         2,       255,         0,         1,4294967295,
#endif
         0,         2,4294967295,4294967295,         0,
#ifdef v10
4294967295,     65536,4294901762,     65535,         0,
#else
     65535,         0,         2,     65535,         0,
#endif
         1,4294967295,         0,         2,4294967295,
4294967295,         0,4294967295,         0,         2,
4294967295,         0,         1, 268435456, 268435488,
#ifdef v10
         0,        32,         0,        32, 268435456,
#else
         0,        32,         0,        32,         0,
#endif
        32,         0,        32, 268435456, 268435488,
#ifdef v10
         0,        32,4294967264,         0,         0,
         0,         0,        32,4294967264,         0,
         0,         0,4026531840, 268435488, 268435424,
         0,   8388608,         0,         0,        32,
4294967264,         0,         0,         0,4026531840,
#else
         0,        32,       -32,         0,         0,   /* 300 */
         0,         0,        32,       224,         0,
         0,         0,         0,        32,       -32,
         0,         0,         0,         0,        32,
     65504,         0,         0,         0,4026531840,
#endif
 536870944,4294967264,         0,         0, 268435456,
4026531840, 536870944,4294967264,         0,         0,
#ifdef v10
 268435456,4294967295,4294967295,       255,       255,
#else
 268435456,4294967295,4294967295,        -1,        -1,
#endif
       255,       255,4294967295,4294967295,     65535,
#ifdef v10
     65535,4294967295,4294967295,4294967041,       510,
         0,     65025,         1,         0,4294967041,
       510,         0,     65025,         1,         0,
#else
     65535,4294967295,4294967295,         1,        -2,
         0,         1,         1,         0,         1,
       254,         0,         1,         1,         0,
#endif
         1,4294967294,         0,         1,         1,
#ifdef v10
         0,4294901761,    131070,         0,4294836225,
#else
         0,         1,    65534 ,         0,         1,
#endif
         1,         0,         1,4294967294,         0,
         1,         1,         0,         1,4294967294,
         0,         1,         1,         0
};
void print(unsigned int i)
{
#if INT64
   unsigned int ans;
#else
   int ans;
#endif
   int check();
   ans = check();
   if( data[count++] != i || ans != i ) {
     if( count-1 == 295 ||
         count-1 == 313 ||
         count-1 == 314 ) {

     }
     printf(" NG ");
     printf(" %d        \n",count-1);
     printf(" case %d \n",(count-1)%48);
     printf(" %.8x              \n",data[count-1]);
     printf(" %.8x             (      1) \n",i);
     printf(" %.8x             (      2,                  ) \n",ans);
   }
}



#define  i1toi4(x)  ((int )(((x)&0xff)<0x7f?(x)&0xff:0xffffff00|(x)))
#define  i2toi4(x)         ((int )(((x)&0xffff)<0x7fff?(x)&0xffff:0xffff0000|(x)))
#define  i4toi1(x)  ((x) & 0xff)
#define  i4toi2(x)  ((x) & 0xffff)
#define  u1tou4(x)  ((x) & 0xff)
#define  u2tou4(x)  ((x) & 0xffff)
#define  u4tou1(x)  ((x) & 0xff)
#define  u4tou2(x)  ((x) & 0xffff)

int check()
{
       unsigned int u41,u42;
       int          acc1,acc2,acc;
       unsigned     uacc1,uacc2,uacc;
       static int i=0;

       u41=*(unsigned int *)(&g1);
       u42=*(unsigned int *)(&g2);
       acc1 = g1;
       acc2 = g2;
       if( i>=48 ) i=0;
       switch( i++ ) {
       case 0 :
         return g1;
       case 1 :
         return g2;
       case 2 :
         return i1toi4(i4toi1(u41));
       case 3 :
         return i1toi4(i4toi1(u42));
       case 4 :
         return u1tou4(u4tou1(u41));
       case 5 :
         return u1tou4(u4tou1(u42));
       case 6 :
         return i2toi4(i4toi2(u41));
       case 7 :
         return i2toi4(i4toi2(u42));
       case 8 :
         return u2tou4(u4tou2(u41));
       case 9 :
         return u2tou4(u4tou2(u42));
       case 10:
         return u41;
       case 11:
         return u42;
       case 12:
         acc1 = i1toi4(u41);
         acc  = -acc1;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 13:
         acc1 = i1toi4(u41);
         acc2 = i1toi4(u42);
         acc  = acc1 + acc2;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 14:
         acc1 = i1toi4(u41);
         acc2 = i1toi4(u42);
         acc  = acc1 - acc2;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 15:
         acc1 = i1toi4(u41);
         acc2 = i1toi4(u42);
         acc  = acc1 * acc2;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 16:
         acc1 = i1toi4(u41);
         acc2 = i1toi4(u42);
         acc  = acc1 / acc2;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 17:
         acc1 = i1toi4(u41);
         acc2 = i1toi4(u42);
         acc  = acc1 % acc2;
         acc  = i1toi4(i4toi1(acc));
         return acc;
       case 18:
         uacc1 = u1tou4(u41);
         uacc = -uacc1;
         uacc = u4tou1(uacc);
         return uacc;
       case 19:
         uacc1 = u1tou4(u41);
         uacc2 = u1tou4(u42);
         uacc = uacc1 + uacc2;
         uacc = u4tou1(uacc);
         return uacc;
       case 20:
         uacc1 = u1tou4(u41);
         uacc2 = u1tou4(u42);
         uacc = uacc1 - uacc2;
         uacc = u4tou1(uacc);
         return uacc;
       case 21:
         uacc1 = u1tou4(u41);
         uacc2 = u1tou4(u42);
         uacc = uacc1 * uacc2;
         uacc = u4tou1(uacc);
         return uacc;
       case 22:
         uacc1 = u1tou4(u41);
         uacc2 = u1tou4(u42);
         uacc = uacc1 / uacc2;
         uacc = u4tou1(uacc);
         return uacc;
       case 23:
         uacc1 = u1tou4(u41);
         uacc2 = u1tou4(u42);
         uacc = uacc1 % uacc2;
         uacc = u4tou1(uacc);
         return uacc;
       case 24:
         acc1 = i2toi4(i4toi2(u41));
         acc  = -acc1;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 25:
         acc1 = i2toi4(u41);
         acc2 = i2toi4(u42);
         acc  = acc1 + acc2;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 26:
         acc1 = i2toi4(u41);
         acc2 = i2toi4(u42);
         acc  = acc1 - acc2;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 27:
         acc1 = i2toi4(u41);
         acc2 = i2toi4(i2toi4(u42));
         acc  = acc1 * acc2;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 28:
         acc1 = i2toi4(u41);
         acc2 = i2toi4(u42);
         acc  = acc1 / acc2;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 29:
         acc1 = i2toi4(u41);
         acc2 = i2toi4(u42);
         acc  = acc1 % acc2;
         acc  = i2toi4(i4toi2(acc));
         return acc;
       case 30:
         uacc1 = u2tou4(u41);
         uacc = -uacc1;
         uacc = u4tou2(uacc);
         return uacc;
       case 31:
         uacc1 = u2tou4(u41);
         uacc2 = u2tou4(u42);
         uacc = uacc1 + uacc2;
         uacc = u4tou2(uacc);
         return uacc;
       case 32:
         uacc1 = u2tou4(u41);
         uacc2 = u2tou4(u42);
         uacc = uacc1 - uacc2;
         uacc = u4tou2(uacc);
         return uacc;
       case 33:
         uacc1 = u2tou4(u41);
         uacc2 = u2tou4(u42);
         uacc = uacc1 * uacc2;
         uacc = u4tou2(uacc);
         return uacc;
       case 34:
         uacc1 = u2tou4(u41);
         uacc2 = u2tou4(u42);
         uacc = uacc1 / uacc2;
         uacc = u4tou2(uacc);
         return uacc;
       case 35:
         uacc1 = u2tou4(u41);
         uacc2 = u2tou4(u42);
         uacc = uacc1 % uacc2;
         uacc = u4tou2(uacc);
         return uacc;
       case 36:
         return -acc1;
       case 37:
         return acc1+acc2;
       case 38:
         return acc1-acc2;
       case 39:
         return acc1*acc2;
       case 40:
         return acc1/acc2;
       case 41:
         return acc1%acc2;
       case 42:
         return -u41;
       case 43:
         return u41+u42;
       case 44:
         return u41-u42;
       case 45:
         return u41*u42;
       case 46:
         return u41/u42;
       case 47:
         return u41%u42;
       default:
         exit(1);
       }
}
