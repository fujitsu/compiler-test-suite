#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char a1[10] = "abcdef";
char b1[10] = "123456";
char a2[10] = {"abcdef"};
char b2[10] = {"123456"};

struct tag {
  char x[6], y[6];
  char xx[5], yy[5];
} x = {
  "foois", "baris",
#if __cplusplus
   "fooi", "bari",
#else
   "foois", "baris",
#endif
};

struct tag y = {
   {"foois"}, {"baris"},
#if __cplusplus
   {"fooi"}, {"bari"},
#else
   {"foois"}, {"baris"},
#endif
};


struct tag2 {
  char x[5][6];
} z = {
  "foo1", "foo2", "foo3", "foo4", "foo5", 
};


struct tag3 {
  char x[2][5][6];
} zz = {
  "foo1", "foo2", "foo3", "foo4", "foo5", 
  "bar1", "bar2", "bar3", "bar4", "bar5", 
};




int n_ng;
#define ng()\
{\
  n_ng++;\
  printf("ng %s:%d\n", __FILE__,__LINE__);\
}
int main()
{
   a1[9] = 'x';
   if (memcmp(a1, "abcdef\0\0\0x", 10)) ng();
   if (memcmp(a2, "abcdef\0\0\0\0", 10)) ng();
   b1[9] = 'x';
   if (memcmp(b1, "123456\0\0\0x", 10)) ng();
   if (memcmp(b2, "123456\0\0\0\0", 10)) ng();
   if (memcmp(x.x, "foois\0", 6)) ng();
   if (memcmp(x.y, "baris\0", 6)) ng();
#if __cplusplus
   if (memcmp(x.xx, "fooi\0", 5)) ng();
   if (memcmp(x.yy, "bari\0", 5)) ng();
#else
   if (memcmp(x.xx, "foois", 5)) ng();
   if (memcmp(x.yy, "baris", 5)) ng();
#endif
   if (memcmp(y.x, "foois\0", 6)) ng();
   if (memcmp(y.y, "baris\0", 6)) ng();
#if __cplusplus
   if (memcmp(y.xx, "fooi\0", 5)) ng();
   if (memcmp(y.yy, "bari\0", 5)) ng();
#else
   if (memcmp(y.xx, "foois", 5)) ng();
   if (memcmp(y.yy, "baris", 5)) ng();
#endif

   z.x[0][5] = 'a';
   z.x[1][5] = 'b';
   z.x[2][5] = 'c';
   z.x[3][5] = 'd';
   z.x[4][5] = 'e';
   if (memcmp(z.x[0], "foo1\0a", 6)) ng();
   if (memcmp(z.x[1], "foo2\0b", 6)) ng();
   if (memcmp(z.x[2], "foo3\0c", 6)) ng();
   if (memcmp(z.x[3], "foo4\0d", 6)) ng();
   if (memcmp(z.x[4], "foo5\0e", 6)) ng();

   zz.x[1][0][5] = 'a';
   zz.x[1][1][5] = 'b';
   zz.x[1][2][5] = 'c';
   zz.x[1][3][5] = 'd';
   zz.x[1][4][5] = 'e';
   if (memcmp(zz.x[0][0], "foo1\0", 6)) ng();
   if (memcmp(zz.x[0][1], "foo2\0", 6)) ng();
   if (memcmp(zz.x[0][2], "foo3\0", 6)) ng();
   if (memcmp(zz.x[0][3], "foo4\0", 6)) ng();
   if (memcmp(zz.x[0][4], "foo5\0", 6)) ng();
   if (memcmp(zz.x[1][0], "bar1\0a", 6)) ng();
   if (memcmp(zz.x[1][1], "bar2\0b", 6)) ng();
   if (memcmp(zz.x[1][2], "bar3\0c", 6)) ng();
   if (memcmp(zz.x[1][3], "bar4\0d", 6)) ng();
   if (memcmp(zz.x[1][4], "bar5\0e", 6)) ng();

   if (!n_ng)
     printf("ok\n");

}

