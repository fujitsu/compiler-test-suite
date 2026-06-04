#include <stdio.h>
#include <stdlib.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (float, struct ss0);
extern unsigned short (*v2) (float, struct ss0);
signed short v3 (float, unsigned int, struct ss1);
signed short (*v4) (float, unsigned int, struct ss1) = v3;
struct ss1 v5 (signed int);
struct ss1 (*v6) (signed int) = v5;
extern signed char v7 (union uu1);
extern signed char (*v8) (union uu1);
unsigned int v9 (signed short);
unsigned int (*v10) (signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;
union uu1 v13 = {-372937620 };
union uu1 v12 = {-957440846 };
union uu1 v11 = {-1025094289 };

unsigned int v9 (signed short v14)
{
history[history_index++] = (int)v14;
{
for (;;) {
unsigned int v17 = 986613545U;
signed short v16 = -19627;
signed int v15 = -678549983;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

struct ss1 v5 (signed int v18)
{
history[history_index++] = (int)v18;
{
for (;;) {
union uu1 v21 = {-706356917 };
unsigned char v20 = 87;
union uu0 v19 = {1172199428U };
trace++;
switch (trace)
{
case 1: 
{
signed int v22;
struct ss1 v23;
v22 = v18 + -2052189775;
v23 = v5 (v22);
history[history_index++] = (int)v23.f3;
history[history_index++] = (int)v23.f2;
history[history_index++] = (int)v23.f1;
history[history_index++] = (int)v23.f0;
}
break;
case 2: 
{
signed int v24;
struct ss1 v25;
v24 = -186404585 - v18;
v25 = (*v6) (v24);
history[history_index++] = (int)v25.f3;
history[history_index++] = (int)v25.f2;
history[history_index++] = (int)v25.f1;
history[history_index++] = (int)v25.f0;
}
break;
case 3: 
{
struct ss1 v26;
v26.f3 = 47913;
v26.f2 = 59863313;
v26.f1 = 13306095U;
v26.f0 = 23U;
return v26;
}
case 4: 
{
signed int v27;
struct ss1 v28;
v27 = -1684308965 - -1290215875;
v28 = (*v6) (v27);
history[history_index++] = (int)v28.f3;
history[history_index++] = (int)v28.f2;
history[history_index++] = (int)v28.f1;
history[history_index++] = (int)v28.f0;
}
break;
case 5: 
{
signed int v29;
struct ss1 v30;
v29 = v18 + 1276402673;
v30 = (*v6) (v29);
history[history_index++] = (int)v30.f3;
history[history_index++] = (int)v30.f2;
history[history_index++] = (int)v30.f1;
history[history_index++] = (int)v30.f0;
}
break;
case 6: 
{
signed int v31;
struct ss1 v32;
v31 = 1335844079 - 565665343;
v32 = (*v6) (v31);
history[history_index++] = (int)v32.f3;
history[history_index++] = (int)v32.f2;
history[history_index++] = (int)v32.f1;
history[history_index++] = (int)v32.f0;
}
break;
case 7: 
{
signed int v33;
struct ss1 v34;
v33 = v18 - v18;
v34 = v5 (v33);
history[history_index++] = (int)v34.f3;
history[history_index++] = (int)v34.f2;
history[history_index++] = (int)v34.f1;
history[history_index++] = (int)v34.f0;
}
break;
case 8: 
{
signed int v35;
struct ss1 v36;
v35 = v18 + v18;
v36 = v5 (v35);
history[history_index++] = (int)v36.f3;
history[history_index++] = (int)v36.f2;
history[history_index++] = (int)v36.f1;
history[history_index++] = (int)v36.f0;
}
break;
case 9: 
{
signed int v37;
struct ss1 v38;
v37 = 1949884145 + v18;
v38 = (*v6) (v37);
history[history_index++] = (int)v38.f3;
history[history_index++] = (int)v38.f2;
history[history_index++] = (int)v38.f1;
history[history_index++] = (int)v38.f0;
}
break;
case 10: 
{
struct ss1 v39;
v39.f3 = 62365;
v39.f2 = 35650138;
v39.f1 = 6970232U;
v39.f0 = 123U;
return v39;
}
case 11: 
{
struct ss1 v40;
v40.f3 = 7954;
v40.f2 = -5542429;
v40.f1 = 65068473U;
v40.f0 = 148U;
return v40;
}
case 12: 
{
struct ss1 v41;
v41.f3 = 28116;
v41.f2 = 34218871;
v41.f1 = 11591242U;
v41.f0 = 409U;
return v41;
}
case 13: 
{
struct ss1 v42;
v42.f3 = 16638;
v42.f2 = 20597386;
v42.f1 = 38013468U;
v42.f0 = 97U;
return v42;
}
case 14: 
{
struct ss1 v43;
v43.f3 = 51778;
v43.f2 = -38284347;
v43.f1 = 30711303U;
v43.f0 = 60U;
return v43;
}
case 15: 
{
struct ss1 v44;
v44.f3 = 3097;
v44.f2 = 22900662;
v44.f1 = 30503417U;
v44.f0 = 146U;
return v44;
}
case 16: 
{
struct ss1 v45;
v45.f3 = 33942;
v45.f2 = 5913834;
v45.f1 = 2063600U;
v45.f0 = 420U;
return v45;
}
case 17: 
{
struct ss1 v46;
v46.f3 = 7285;
v46.f2 = 38897999;
v46.f1 = 2479628U;
v46.f0 = 453U;
return v46;
}
default: abort ();
}
}
}
}

signed short v3 (float v47, unsigned int v48, struct ss1 v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49.f3;
history[history_index++] = (int)v49.f2;
history[history_index++] = (int)v49.f1;
history[history_index++] = (int)v49.f0;
{
for (;;) {
struct ss1 v52 = { 59629, -4767934, 52903573U, 69U, };
struct ss0 v51 = { 127753U, 687404U, 64278, };
unsigned char v50 = 61;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
float v55;
struct ss0 v56;
unsigned short v57;
v55 = -1468305534.58708F;
v56.f2 = 962298U;
v56.f1 = 71081U;
v56.f0 = 42732;
v57 = (*v2) (v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
