#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (float, struct ss0);
extern unsigned short (*v2) (float, struct ss0);
extern signed short v3 (float, unsigned int, struct ss1);
extern signed short (*v4) (float, unsigned int, struct ss1);
extern struct ss1 v5 (signed int);
extern struct ss1 (*v6) (signed int);
signed char v7 (union uu1);
signed char (*v8) (union uu1) = v7;
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v60 = -2741;
struct ss1 v59 = { 62311, -54663885, 33392798U, 211U, };
struct ss0 v58 = { 426054U, 563099U, 21028, };

signed char v7 (union uu1 v61)
{
history[history_index++] = (int)v61.f2;
{
for (;;) {
double v64 = -3618875714517716463.35598;
union uu1 v63 = {-194652761 };
union uu1 v62 = {-1667427841 };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
