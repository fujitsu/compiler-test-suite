#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed int v3 (union uu0, unsigned char, signed int, struct ss1);
extern signed int (*v4) (union uu0, unsigned char, signed int, struct ss1);
unsigned int v5 (signed char, struct ss1, unsigned int);
unsigned int (*v6) (signed char, struct ss1, unsigned int) = v5;
extern signed char v7 (unsigned short, signed short, signed short);
extern signed char (*v8) (unsigned short, signed short, signed short);
extern signed char v9 (float);
extern signed char (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v36 = { 29057, 41918411, 48666502U, 461U, };
float v35 = 600964305.3692F;
unsigned int v34 = 4293852103U;

unsigned int v5 (signed char v37, struct ss1 v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38.f3;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 124025602U;
float v41 = -218696654.55591F;
signed int v40 = -1171619191;
trace++;
switch (trace)
{
case 1: 
return 2668412908U;
case 3: 
return v39;
case 9: 
return v42;
default: abort ();
}
}
}
}
