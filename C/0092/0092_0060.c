#include <stdio.h>

#if defined(INT64)
#define int __int32
#endif
int main(){
 static char  i1 = -1;
 static short i2 = -1;
 static int   i4 = -1;
 static unsigned char  u1;
 static unsigned short u2;
 static unsigned int   u4;

 if ((unsigned char)i1 == 255)
     printf("** (01) ** OK\n");
 else
     printf("** (01) ** NG\n");
 if ((unsigned char)i2 == 255)
     printf("** (02) ** OK\n");
 else
     printf("** (02) ** NG\n");
 if ((unsigned char)i4 == 255)
     printf("** (03) ** OK\n");
 else
     printf("** (03) ** NG\n");

 if ((unsigned short)i1 == 65535)
     printf("** (04) ** OK\n");
 else
     printf("** (04) ** NG\n");
 if ((unsigned short)i2 == 65535)
     printf("** (05) ** OK\n");
 else
     printf("** (05) ** NG\n");
 if ((unsigned short)i4 == 65535)
     printf("** (06) ** OK\n");
 else
     printf("** (06) ** NG\n");

 if ((unsigned int)i1 == 4294967295u)
     printf("** (07) ** OK\n");
 else
     printf("** (07) ** NG\n");
 if ((unsigned int)i2 == 4294967295u)
     printf("** (08) ** OK\n");
 else
     printf("** (08) ** NG\n");
 if ((unsigned int)i4 == 4294967295)
     printf("** (09) ** OK\n");
 else
     printf("** (09) ** NG\n");
u1=0xff;
u2=0xffff;
u4=0xffffffff;

 if ((char)u1 == -1)
     printf("** (10) ** OK\n");
 else
     printf("** (10) ** NG\n");
 if ((char)u2 == -1)
     printf("** (11) ** OK\n");
 else
     printf("** (11) ** NG\n");
 if ((char)u4 == -1)
     printf("** (12) ** OK\n");
 else
     printf("** (12) ** NG\n");

 if ((short)u1 == 255)
     printf("** (13) ** OK\n");
 else
     printf("** (13) ** NG %d\n",(short)u1);
 if ((short)u2 == -1)
     printf("** (14) ** OK\n");
 else
     printf("** (14) ** NG\n");
 if ((short)u4 == -1)
     printf("** (15) ** OK\n");
 else
     printf("** (15) ** NG\n");

 if (( int)u1 == 255)
     printf("** (16) ** OK\n");
 else
     printf("** (16) ** NG\n");
 if (( int)u2 == 65535)
     printf("** (17) ** OK\n");
 else
     printf("** (17) ** NG\n");
 if (( int)u4 == -1)
     printf("** (18) ** OK\n");
 else
     printf("** (18) ** NG\n");
}
 
