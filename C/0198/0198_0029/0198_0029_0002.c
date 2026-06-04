#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
struct ss0 v3 (signed char);
struct ss0 (*v4) (signed char) = v3;
float v5 (void);
float (*v6) (void) = v5;
static unsigned char v7 (void);
static unsigned char (*v8) (void) = v7;
extern union uu1 v9 (union uu0, signed int, union uu1, double);
extern union uu1 (*v10) (union uu0, signed int, union uu1, double);
extern int history[];
extern int history_index;
extern int trace;
signed int v38 = -1278716574;
struct ss0 v37 = { 193697U, 1043599U, 49661, };
struct ss1 v36 = { 51600, -10584584, 55501495U, 292U, };

static unsigned char v7 (void)
{
{
for (;;) {
double v41 = -4607999444606176262.17712;
signed char v40 = -31;
union uu0 v39 = {2054828762U };
trace++;
switch (trace)
{
case 5: 
return 242;
default: abort ();
}
}
}
}

float v5 (void)
{
{
for (;;) {
unsigned short v44 = 26706;
double v43 = 7855569573964371269.60942;
unsigned int v42 = 2949757134U;
trace++;
switch (trace)
{
case 1: 
return 492783127.18741F;
case 9: 
return 36622818.49834F;
default: abort ();
}
}
}
}

struct ss0 v3 (signed char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
float v48 = 2063205682.47974F;
signed char v47 = 47;
union uu1 v46 = {-1982369122 };
trace++;
switch (trace)
{
case 4: 
{
unsigned char v49;
v49 = v7 ();
history[history_index++] = (int)v49;
}
break;
case 6: 
{
signed char v50;
struct ss0 v51;
v50 = v47 - v47;
v51 = v3 (v50);
history[history_index++] = (int)v51.f2;
history[history_index++] = (int)v51.f1;
history[history_index++] = (int)v51.f0;
}
break;
case 7: 
{
signed short v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
break;
case 11: 
{
struct ss0 v53;
v53.f2 = 326811U;
v53.f1 = 1046912U;
v53.f0 = 14698;
return v53;
}
case 13: 
{
struct ss0 v54;
v54.f2 = 1008513U;
v54.f1 = 182876U;
v54.f0 = 52690;
return v54;
}
case 14: 
{
struct ss0 v55;
v55.f2 = 770644U;
v55.f1 = 344356U;
v55.f0 = 40679;
return v55;
}
default: abort ();
}
}
}
}
