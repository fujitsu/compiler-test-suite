#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (void);
extern signed int (*v2) (void);
void v3 (signed char, struct ss1, signed int, signed short);
void (*v4) (signed char, struct ss1, signed int, signed short) = v3;
union uu1 v5 (void);
union uu1 (*v6) (void) = v5;
extern signed short v7 (unsigned char, struct ss1);
extern signed short (*v8) (unsigned char, struct ss1);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
float v52 = 835861779.49786F;
unsigned char v51 = 85;
struct ss1 v50 = { 22907, -31510461, 16355113U, 500U, };

union uu1 v5 (void)
{
{
for (;;) {
unsigned short v55 = 33086;
double v54 = 4315042009755836153.60250;
signed char v53 = -113;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v56, struct ss1 v57, signed int v58, signed short v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57.f3;
history[history_index++] = (int)v57.f2;
history[history_index++] = (int)v57.f1;
history[history_index++] = (int)v57.f0;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
struct ss1 v62 = { 53476, 52226709, 62027966U, 242U, };
signed short v61 = 4782;
float v60 = -709272606.44075F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
