#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned char v3 (unsigned int, double);
unsigned char (*v4) (unsigned int, double) = v3;
extern union uu1 v5 (unsigned char, struct ss0, unsigned short);
extern union uu1 (*v6) (unsigned char, struct ss0, unsigned short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
struct ss0 v22 = { 216055U, 354744U, 11469, };
unsigned int v21 = 1017635407U;
unsigned char v20 = 152;

unsigned char v3 (unsigned int v23, double v24)
{
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
{
for (;;) {
signed char v27 = 71;
struct ss1 v26 = { 50757, 33835049, 23298336U, 360U, };
unsigned char v25 = 185;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v28;
struct ss0 v29;
unsigned short v30;
union uu1 v31;
v28 = v25 - 248;
v29.f2 = 429347U;
v29.f1 = 163613U;
v29.f0 = 56790;
v30 = 45638 - 33367;
v31 = (*v6) (v28, v29, v30);
history[history_index++] = (int)v31.f2;
}
break;
case 15: 
return 175;
default: abort ();
}
}
}
}
