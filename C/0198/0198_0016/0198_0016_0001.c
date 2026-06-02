#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (struct ss0);
extern unsigned short (*v4) (struct ss0);
unsigned char v5 (unsigned short, struct ss0, unsigned int, double);
unsigned char (*v6) (unsigned short, struct ss0, unsigned int, double) = v5;
static float v7 (float);
static float (*v8) (float) = v7;
extern struct ss1 v9 (void);
extern struct ss1 (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 92950853U;
unsigned int v32 = 2242047468U;
struct ss1 v31 = { 46942, -17011309, 19382860U, 279U, };

static float v7 (float v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
union uu1 v37 = {681132055 };
signed int v36 = 18357408;
float v35 = 2087888613.21397F;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v38;
struct ss0 v39;
unsigned int v40;
double v41;
unsigned char v42;
v38 = 56184 + 14913;
v39.f2 = 878439U;
v39.f1 = 754091U;
v39.f0 = 22379;
v40 = 2658975440U - 3032938155U;
#if defined(__aarch64__)
 v41 =-2147483648;
#else
v41 = -6196571698148695529.11945;
#endif
v42 = (*v6) (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 9: 
{
struct ss1 v43;
v43 = (*v10) ();
history[history_index++] = (int)v43.f3;
history[history_index++] = (int)v43.f2;
history[history_index++] = (int)v43.f1;
history[history_index++] = (int)v43.f0;
}
break;
case 11: 
return 326793690.37169F;
case 13: 
return 1216634290.60617F;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v44, struct ss0 v45, unsigned int v46, double v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45.f2;
history[history_index++] = (int)v45.f1;
history[history_index++] = (int)v45.f0;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 3;
struct ss1 v49 = { 34246, 17041163, 13350375U, 473U, };
signed short v48 = -26297;
trace++;
switch (trace)
{
case 6: 
{
float v51;
float v52;
v51 = -692106799.57757F;
v52 = v7 (v51);
history[history_index++] = (int)v52;
}
break;
case 8: 
{
float v53;
float v54;
v53 = -319133191.10844F;
v54 = (*v8) (v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
return 193;
case 14: 
return 127;
default: abort ();
}
}
}
}
