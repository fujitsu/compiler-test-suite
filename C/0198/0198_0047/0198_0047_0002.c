#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (struct ss0);
extern unsigned int (*v6) (struct ss0);
signed short v7 (signed char, signed char, double);
signed short (*v8) (signed char, signed char, double) = v7;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v50 = {-1173757943 };
struct ss0 v49 = { 738637U, 551582U, 57800, };
signed char v48 = -119;

signed short v7 (signed char v51, signed char v52, double v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
double v56 = -1626714823433284417.2928;
signed char v55 = -118;
signed char v54 = -6;
trace++;
switch (trace)
{
case 10: 
return 22186;
default: abort ();
}
}
}
}
