#include <stdio.h>

int main()
 {
 int                  i;
 char                 c;
 signed char         sc;
 unsigned char       uc;
 short                s;
 signed short        ss;
 unsigned short      us;
 struct {
     char            c:8;
     signed char    sc:8;
     unsigned char  uc:8;
     short           s:16;
     signed short   ss:16;
     unsigned short us:16;
     int             i:32;
     signed int     si:32;
     unsigned int   ui:32;
 } st;
 enum { en1=0xffffffff,en2=-1,en3=0xffff } en;

 printf(" ***  TEST STATRT. ***\n");

 i = 1;
 c = 0x7f;
 if (i-c != -126 || i-c > 0)
     printf(" ***  TEST-1 NG -CHAR- ***\n");

 sc = -2;
 if (i+sc != -1 || i+sc > 0)
     printf(" ***  TEST-2 NG -SIGNED CHAR- ***\n");

 uc = 0xff;
#ifdef BIT_SIGNED
 if (i-uc != -254 || i-uc < 0)
#else
 if (i-uc != -254 || i-uc > 0)
#endif   
     printf(" ***  TEST-3 NG -UNSIGNED CHAR- ***\n");

 s = -2;
 if (i+s != -1 || i+s > 0)
     printf(" ***  TEST-4 NG -SHORT- ***\n");

 ss = -2;
 if (i+ss != -1 || i+ss > 0)
     printf(" ***  TEST-5 NG -SIGNED SHORT- ***\n");

 us = 0xffff;
#ifdef BIT_SIGNED
 if (i-us != -65534 || i-us < 0)
#else
 if (i-us != -65534 || i-us > 0)
#endif
     printf(" ***  TEST-6 NG -UNSIGNED SHORT- ***\n");

 st.c = 0x7f;
 if (st.c != 127)
     printf(" ***  TEST-7 NG -CHAR FIELD- ***\n");

 st.sc = 0x7f;
 if (st.sc != 127)
     printf(" ***  TEST-8 NG -SIGNED CHAR FIELD- ***\n");

 st.uc = 0xff;
 if (st.uc != 255)
     printf(" ***  TEST-9 NG -UNSIGNED CHAR FIELD- ***\n");

 st.s = 0xffff;

#if BIT_SIGNED ||  __GNUC__

 if (st.s != -1)
#else
 if (st.s != 65535)
#endif
     printf(" ***  TEST-10 NG -SHORT FIELD- ***\n");

 st.ss = 0xffff;
 if (st.ss != -1)
     printf(" ***  TEST-11 NG -SIGNED SHORT FIELD- ***\n");

 st.us = 0xffff;
 if (st.us != 65535)
     printf(" ***  TEST-12 NG -UNSIGNED SHORT FIELD- ***\n");

 st.i = 0x7fffffff;
 if (st.i != 2147483647)
     printf(" ***  TEST-13 NG -INT FIELD- ***\n");

 st.i = 0xffffffff;

#if BIT_SIGNED ||  __GNUC__
 if (st.i != -1 || st.i > 0)
#else
 if (st.i != 4294967295 || st.i < 0)
#endif
     printf(" ***  TEST-14 NG -INT FIELD- ***\n");

 st.si = 0x7fffffff;
 if (st.si != 2147483647)
     printf(" ***  TEST-15 NG -SIGNED INT FIELD- ***\n");

 st.si = 0xffffffff;
 if (st.si != -1 || st.si > 0)
     printf(" ***  TEST-16 NG -SIGNED INT FIELD- ***\n");

 st.ui = 0x7fffffff;
 if (st.ui != 2147483647)
     printf(" ***  TEST-17 NG -UNSIGNED INT FIELD- ***\n");

 st.ui = 0xffffffff;
 if (st.ui != 4294967295 || st.ui < 0)
     printf(" ***  TEST-18 NG -UNSIGNED INT FIELD- ***\n");

 i=0;
#if defined(__GNUC__)
 if ((int)en1 != -1 || (int)en1 > 0 || i)
#else
 if (en1 != -1 || en1 > 0 || i)
#endif
     printf(" ***  TEST-19 NG -ENUM-1- %d ***\n", en1);

 if (en2 != -1 || en2 > 0 || i)
     printf(" ***  TEST-20 NG -ENUM-2- %d ***\n", en2);

 if (en3 != 65535 || i)
     printf(" ***  TEST-21 NG -ENUM-3- ***\n");

 printf(" ***  TEST END. ***\n");
 }
