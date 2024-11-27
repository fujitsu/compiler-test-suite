#include <stdio.h>

int main( ) {
  int a,b,c;
  unsigned int d,e,f;
  long long int aaa,bbb,ccc;
  unsigned long long int ddd,eee,fff;
          b=0x000000ffLL;c=8;
  a=b<<c;
          if (a==0x0000ff00LL) printf("** (1)** OK\n");
          else               printf("** (1)** NG a=%x\n",a);
  a=b>>c;
          if (a==0x00000000LL) printf("** (2)** OK\n");
          else               printf("** (2)** NG a=%x\n",a);
          e=0x00ffffffLL;f=8;
  d=e<<f;
          if (d==0xffffff00LL) printf("** (3)** OK\n");
          else               printf("** (3)** NG d=%x\n",a);
  d=e>>f;
          if (d==0x0000ffffLL) printf("** (4)** OK\n");
          else               printf("** (4)** NG d=%x\n",a);

          b=0x000000ffLL;
  a=b<<8;
          if (a==0x0000ff00LL) printf("** (5)** OK\n");
          else               printf("** (5)** NG a=%x\n",a);
  a=b>>31;
          if (a==0x00000000LL) printf("** (6)** OK\n");
          else               printf("** (6)** NG a=%x\n",a);
          e=0x000000ff;
  d=e<<24;
          if (d==0xff000000ULL) printf("** (7)** OK\n");
          else               printf("** (7)** NG d=%x\n",d);
  d=e>>1;
          if (d==0x0000007fULL) printf("** (8)** OK\n");
          else               printf("** (8)** NG d=%x\n",d);

          b=8;e=16;
  a=8<<b;
          if (a==0x00000800ULL) printf("** (9)** OK\n");
          else               printf("** (9)** NG a=%x\n",a);
  a=256>>b;
          if (a==0x00000001ULL) printf("** (10)** OK\n");
          else               printf("** (10)** NG a=%x\n",a);
  d=256<<e;
          if (d==0x01000000ULL) printf("** (11)** OK\n");
          else               printf("** (11)** NG d=%d\n",d);
  d=65536>>e;
          if (d==0x00000001ULL) printf("** (12)** OK\n");
          else               printf("** (12)** NG d=%x\n",d);
          bbb=0x00000000ffffffffLL;ccc=16;
  aaa=bbb<<ccc;
          if (aaa==0x0000ffffffff0000LL)
                             printf("** (1)** OK\n");
          else printf("** (1)** NG aaa=%x,%x\n",*(int *)&aaa,*(((int *)&aaa)+1));
  aaa=bbb>>ccc;
          if (aaa==0x000000000000ffffLL)
                             printf("** (2)** OK\n");
          else printf("** (2)** NG aaa=%x,%x\n",*(int *)&aaa,*(((int *)&aaa)+1));
          eee=0x00000000000000ffULL;fff=56;
  ddd=eee<<fff;
          if (ddd==0xff00000000000000ULL) printf("** (3)** OK\n");
          else               printf("** (3)** NG ddd=%x\n",aaa);
  ddd=eee>>fff;
          if (ddd==0x0000000000000000ULL) printf("** (4)** OK\n");
          else               printf("** (4)** NG ddd=%x\n",aaa);

          bbb=0x0000000f00000000LL;
  aaa=bbb<<8;
          if (aaa==0x00000f0000000000LL) printf("** (5)** OK\n");
          else               printf("** (5)** NG aaa=%x\n",aaa);
  aaa=bbb>>44;
          if (aaa==0x0000000000000000LL) printf("** (6)** OK\n");
          else               printf("** (6)** NG aaa=%x\n",aaa);
          eee=0x00000000ffffffffULL;
  ddd=eee<<32;
          if (ddd==0xffffffff00000000ULL) printf("** (7)** OK\n");
          else               printf("** (7)** NG ddd=%x\n",ddd);
  ddd=eee>>1;
          if (ddd==0x000000007fffffffULL) printf("** (8)** OK\n");
          else               printf("** (8)** NG ddd=%x\n",ddd);

          bbb=8;eee=16;
  aaa=8<<bbb;
          if (aaa==0x0000000000000800LL) printf("** (9)** OK\n");
          else               printf("** (9)** NG aaa=%x\n",aaa);
  aaa=256>>bbb;
          if (aaa==0x0000000000000001LL) printf("** (10)** OK\n");
          else               printf("** (10)** NG aaa=%x\n",aaa);
  ddd=256<<eee;
          if (ddd==0x0000000001000000ULL) printf("** (11)** OK\n");
          else               printf("** (11)** NG ddd=%ddd\n",ddd);
  ddd=4294967296ull>>eee;
          if (ddd==0x0000000000010000ULL) printf("** (12)** OK\n");
          else               printf("** (12)** NG ddd=%x\n",ddd);
}
