#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (unsigned short, union uu0);
extern unsigned short (*v2) (unsigned short, union uu0);
extern float v3 (float, signed char, float, signed char);
extern float (*v4) (float, signed char, float, signed char);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
double v54 = 6036124474711071052.6257;
signed char v53 = 114;
unsigned char v52 = 95;

signed short v9 (void)
{
{
for (;;) {
signed short v57 = 4332;
struct ss1 v56 = { 11895, -16903333, 6474024U, 471U, };
unsigned int v55 = 2951221097U;
trace++;
switch (trace)
{
case 11: 
return 26063;
default: abort ();
}
}
}
}
