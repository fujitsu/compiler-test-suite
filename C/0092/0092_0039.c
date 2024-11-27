#include <stdio.h>

int main( ) {
  int a,b,c;
  unsigned int d,e,f;
          b=0x000000ff;c=8;
  a=b<<c;
          if (a==0x0000ff00) printf("** (1)** OK\n");
          else               printf("** (1)** NG a=%x\n",a);
  a=b>>c;
          if (a==0x00000000) printf("** (2)** OK\n");
          else               printf("** (2)** NG a=%x\n",a);
          e=0x00ffffff;f=8;
  d=e<<f;
          if (d==0xffffff00) printf("** (3)** OK\n");
          else               printf("** (3)** NG d=%x\n",a);
  d=e>>f;
          if (d==0x0000ffff) printf("** (4)** OK\n");
          else               printf("** (4)** NG d=%x\n",a);

          b=0x000000ff;
  a=b<<8;
          if (a==0x0000ff00) printf("** (5)** OK\n");
          else               printf("** (5)** NG a=%x\n",a);
  a=b>>31;
          if (a==0x00000000) printf("** (6)** OK\n");
          else               printf("** (6)** NG a=%x\n",a);
          e=0x000000ff;
  d=e<<24;
          if (d==0xff000000) printf("** (7)** OK\n");
          else               printf("** (7)** NG d=%x\n",d);
  d=e>>1;
          if (d==0x0000007f) printf("** (8)** OK\n");
          else               printf("** (8)** NG d=%x\n",d);

          b=8;e=16;
  a=8<<b;
          if (a==0x00000800) printf("** (9)** OK\n");
          else               printf("** (9)** NG a=%x\n",a);
  a=256>>b;
          if (a==0x00000001) printf("** (10)** OK\n");
          else               printf("** (10)** NG a=%x\n",a);
  d=256<<e;
          if (d==0x01000000) printf("** (11)** OK\n");
          else               printf("** (11)** NG d=%d\n",d);
  d=65536>>e;
          if (d==0x00000001) printf("** (12)** OK\n");
          else               printf("** (12)** NG d=%x\n",d);
}
