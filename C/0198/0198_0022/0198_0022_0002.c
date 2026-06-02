#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (signed char, float, struct ss0);
extern signed char (*v4) (signed char, float, struct ss0);
extern signed char v7 (unsigned short, struct ss1, struct ss1, signed int);
extern signed char (*v8) (unsigned short, struct ss1, struct ss1, signed int);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v46 = 28;
unsigned char v45 = 113;
union uu0 v44 = {622716918U };

signed short v9 (void)
{
{
for (;;) {
signed char v49 = -90;
struct ss0 v48 = { 450821U, 535199U, 34422, };
struct ss0 v47 = { 940975U, 857922U, 47640, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
