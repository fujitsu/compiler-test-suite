#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v3 (unsigned char, struct ss1, unsigned short, signed char);
extern signed short (*v4) (unsigned char, struct ss1, unsigned short, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
struct ss1 v7 (unsigned int, unsigned int, float);
struct ss1 (*v8) (unsigned int, unsigned int, float) = v7;
extern signed int v9 (union uu0, unsigned int);
extern signed int (*v10) (union uu0, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v38 = 1600422943;
struct ss0 v37 = { 154928U, 491981U, 33474, };
float v36 = 601257276.59826F;

struct ss1 v7 (unsigned int v39, unsigned int v40, float v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
struct ss1 v44 = { 32207, 63367968, 31602732U, 335U, };
double v43 = 7976340704724859858.40827;
union uu0 v42 = {2987216663U };
trace++;
switch (trace)
{
case 5: 
{
signed int v45;
v45 = (*v6) ();
history[history_index++] = (int)v45;
}
break;
case 7: 
{
struct ss1 v46;
v46.f3 = 38242;
v46.f2 = 12415953;
v46.f1 = 30750152U;
v46.f0 = 148U;
return v46;
}
case 11: 
{
struct ss1 v47;
v47.f3 = 56751;
v47.f2 = -41433101;
v47.f1 = 10611282U;
v47.f0 = 310U;
return v47;
}
default: abort ();
}
}
}
}
