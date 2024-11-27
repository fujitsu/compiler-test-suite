#include <stdio.h>

#if !defined(INT64)
#define __int32 int
#endif
int main( ) {
  __int32 a,b,c;
  unsigned __int32 d,e,f;
  long long int aaa,bbb,ccc;
  unsigned long long int ddd,eee,fff;
  void sub( );

              b=0x00000000;c=0xffffffff;
  a=b  &  c;
              if (a==0)          printf("**(01)** OK \n");
              else               printf("**(01)** NG a=%0.8x\n",a);
  a=b  |  c;
              if (a==-1)         printf("**(02)** OK \n");
              else               printf("**(02)** NG a=%0.8x\n",a);
              e=0x0000ffff;f=0xffff0000;
  d=e  ^  f;
#if INT64
              if (d==(unsigned __int32)(~0))      printf("**(03)** OK \n");
#else
              if (d==-1)         printf("**(03)** OK \n");
#endif
              else               printf("**(03)** NG d=%0.8x\n",d);
  d=~b;
#if INT64
              if (d==(unsigned __int32)(~0))         printf("**(04)** OK \n");
#else
              if (d==-1)         printf("**(04)** OK \n");
#endif
              else               printf("**(04)** NG d=%0.8x\n",d);

  a=b  &  8;
              if (a==0)          printf("**(05)** OK \n");
              else               printf("**(05)** NG a=%0.8x\n",a);
  a=b  |  2147483648;
#if INT64
              if (a==0xffffffff80000000LL) printf("**(06)** OK \n");
#else
              if (a==0x80000000) printf("**(06)** OK \n");
#endif
              else               printf("**(06)** NG a=%0.8x\n",a);
              e=0x0000ffff;
  d=e  ^  0xffff0000;
              if (d==0xffffffff) printf("**(07)** OK \n");
              else               printf("**(07)** NG d=%0.8x\n",d);

  a=-1  &  b;
              if (a==0)          printf("**(08)** OK \n");
              else               printf("**(08)** NG a=%0.8x\n",a);
  a= 0  |  c;
              if (a==-1)         printf("**(09)** OK \n");
              else               printf("**(09)** NG a=%0.8x\n",a);
  d=65536 ^ e;
              if (d==0x0001ffff) printf("**(10)** OK \n");
              else               printf("**(10)** NG d=%0.8x\n",d);


              bbb=0x0000000000000000LL;
              ccc=0xffffffffffffffffLL;
  aaa=bbb  &  ccc;
              if (aaa==0)          printf("**(01)** OK \n");
              else               printf("**(01)** NG aaa=%0.8x\n",aaa);
  aaa=bbb  |  ccc;
              if (aaa==-1LL)         printf("**(02)** OK \n");
              else               printf("**(02)** NG aaa=%0.8x\n",aaa);
              eee=0x00000000ffffffffULL;
              fff=0xffffffff00000000ULL;
  ddd=eee  ^  fff;
              if (ddd==-1LL)         printf("**(03)** OK \n");
              else               printf("**(03)** NG ddd=%0.8x\n",ddd);
  ddd=~bbb;
              if (ddd==-1LL)         printf("**(04)** OK \n");
              else               printf("**(04)** NG ddd=%0.8x\n",ddd);

  aaa=bbb  &  8;
              if (aaa==0)          printf("**(05)** OK \n");
              else               printf("**(05)** NG aaa=%0.8x\n",aaa);
  aaa=bbb  |  2147483648LL;
              if (aaa==0x0000000080000000LL) printf("**(06)** OK \n");
              else               printf("**(06)** NG aaa=%0.8x\n",aaa);
              eee=0x00000000ffffffffULL;
  ddd=eee  ^  0xffffffff00000000ULL;
              if (ddd==0xffffffffffffffffULL) printf("**(07)** OK \n");
              else           printf("**(07)** NG ddd=%0.8x\n",ddd);

  aaa=-1  &  bbb;
              if (aaa==0)      printf("**(08)** OK \n");
              else             printf("**(08)** NG aaa=%0.8x\n",aaa);
  aaa= 0  |  ccc;
              if (aaa==-1)     printf("**(09)** OK \n");
              else             printf("**(09)** NG aaa=%0.8x\n",aaa);
  ddd=65536 ^ eee;
              if (ddd==0x00000000fffeffffULL) printf("**(10)** OK \n");
              else             printf("**(10)** NG ddd=%0.8x\n",ddd);

  aaa=-1ll;
  bbb= -aaa;
              if (bbb==1ll) printf("**(11)** OK \n");
              else           printf("**(11)** NG ddd=%0.8x\n",bbb);
  aaa= 1ll;
  bbb= -aaa;
              if (bbb==-1ll) printf("**(12)** OK \n");
              else           printf("**(12)** NG ddd=%0.8x\n",bbb);
}
