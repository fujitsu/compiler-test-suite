#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss0 v1 (void);
extern struct ss0 (*v2) (void);
signed short v5 (signed short, union uu1);
signed short (*v6) (signed short, union uu1) = v5;
signed int v7 (struct ss0);
signed int (*v8) (struct ss0) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v22 = {3339429224U };
unsigned int v21 = 3437037790U;
struct ss1 v20 = { 23052, -12866390, 27178389U, 291U, };

signed int v7 (struct ss0 v23)
{
history[history_index++] = (int)v23.f2;
history[history_index++] = (int)v23.f1;
history[history_index++] = (int)v23.f0;
{
for (;;) {
unsigned char v26 = 248;
struct ss1 v25 = { 55684, 64883445, 23937460U, 225U, };
float v24 = -1854185147.32936F;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v27, union uu1 v28)
{
history[history_index++] = (int)v27;
history[history_index++] = (int)v28.f2;
{
for (;;) {
signed char v31 = 72;
float v30 = -560733227.41452F;
struct ss0 v29 = { 705032U, 35916U, 5198, };
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
