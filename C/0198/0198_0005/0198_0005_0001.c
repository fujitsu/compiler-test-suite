#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v5 (void);
extern struct ss0 (*v6) (void);
union uu0 v7 (unsigned int, float, unsigned short, union uu0);
union uu0 (*v8) (unsigned int, float, unsigned short, union uu0) = v7;
signed int v9 (signed short);
signed int (*v10) (signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v40 = {1975039930 };
unsigned int v39 = 1428337155U;
unsigned short v38 = 8204;

signed int v9 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
struct ss0 v44 = { 146798U, 549567U, 5218, };
unsigned short v43 = 57404;
unsigned int v42 = 1902794002U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

union uu0 v7 (unsigned int v45, float v46, unsigned short v47, union uu0 v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48.f3;
{
for (;;) {
float v51 = -1518476137.47749F;
unsigned int v50 = 3424355959U;
unsigned char v49 = 103;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
