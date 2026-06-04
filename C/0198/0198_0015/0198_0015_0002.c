#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v3 (unsigned short, signed short);
extern struct ss1 (*v4) (unsigned short, signed short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern double v7 (signed short, signed char);
extern double (*v8) (signed short, signed char);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = 25;
unsigned short v69 = 46673;
signed char v68 = -108;

unsigned char v9 (void)
{
{
for (;;) {
signed short v73 = -2267;
struct ss0 v72 = { 21533U, 453936U, 32696, };
unsigned char v71 = 173;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
