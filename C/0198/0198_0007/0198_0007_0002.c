#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (struct ss1, unsigned char, signed char, signed int);
extern signed int (*v2) (struct ss1, unsigned char, signed char, signed int);
struct ss0 v3 (void);
struct ss0 (*v4) (void) = v3;
unsigned int v5 (float, signed char);
unsigned int (*v6) (float, signed char) = v5;
static signed char v9 (float, struct ss1, float);
static signed char (*v10) (float, struct ss1, float) = v9;
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v43 = { 58544, -8934995, 59470025U, 247U, };
signed char v42 = 78;
unsigned int v41 = 2984321122U;

static signed char v9 (float v44, struct ss1 v45, float v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45.f3;
history[history_index++] = (int)v45.f2;
history[history_index++] = (int)v45.f1;
history[history_index++] = (int)v45.f0;
history[history_index++] = (int)v46;
{
for (;;) {
struct ss0 v49 = { 814403U, 963824U, 42652, };
struct ss0 v48 = { 355107U, 50496U, 43488, };
unsigned int v47 = 1051830384U;
trace++;
switch (trace)
{
case 2: 
return 12;
case 4: 
{
struct ss1 v50;
unsigned char v51;
signed char v52;
signed int v53;
signed int v54;
v50.f3 = 50998;
v50.f2 = -39695251;
v50.f1 = 51578898U;
v50.f0 = 50U;
v51 = 140 + 80;
v52 = 68 - 51;
v53 = -538175141 - -1636486007;
v54 = (*v2) (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 16: 
return -42;
default: abort ();
}
}
}
}

unsigned int v5 (float v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 392837329;
unsigned short v58 = 10615;
float v57 = -140012489.23633F;
trace++;
switch (trace)
{
case 1: 
{
float v60;
struct ss1 v61;
float v62;
signed char v63;
v60 = v55;
v61.f3 = v58;
v61.f2 = -294781;
v61.f1 = 16160634U;
v61.f0 = 238U;
v62 = v57;
v63 = (*v10) (v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 3: 
{
float v64;
struct ss1 v65;
float v66;
signed char v67;
v64 = v55;
v65.f3 = 31589;
v65.f2 = 8994269;
v65.f1 = 23827564U;
v65.f0 = 139U;
v66 = -1977528001.10445F;
v67 = v9 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 17: 
return 2509059816U;
default: abort ();
}
}
}
}

struct ss0 v3 (void)
{
{
for (;;) {
union uu0 v70 = {459507519U };
union uu0 v69 = {697245703U };
union uu1 v68 = {-1797113211 };
trace++;
switch (trace)
{
case 7: 
{
struct ss0 v71;
v71 = (*v4) ();
history[history_index++] = (int)v71.f2;
history[history_index++] = (int)v71.f1;
history[history_index++] = (int)v71.f0;
}
break;
case 8: 
{
struct ss0 v72;
v72 = (*v4) ();
history[history_index++] = (int)v72.f2;
history[history_index++] = (int)v72.f1;
history[history_index++] = (int)v72.f0;
}
break;
case 9: 
{
struct ss0 v73;
v73 = (*v4) ();
history[history_index++] = (int)v73.f2;
history[history_index++] = (int)v73.f1;
history[history_index++] = (int)v73.f0;
}
break;
case 10: 
{
struct ss0 v74;
v74.f2 = 1011688U;
v74.f1 = 308150U;
v74.f0 = 25803;
return v74;
}
case 11: 
{
struct ss0 v75;
v75.f2 = 920407U;
v75.f1 = 262703U;
v75.f0 = 56986;
return v75;
}
case 12: 
{
struct ss0 v76;
v76.f2 = 943107U;
v76.f1 = 1041164U;
v76.f0 = 48643;
return v76;
}
case 13: 
{
struct ss0 v77;
v77.f2 = 259118U;
v77.f1 = 800411U;
v77.f0 = 24484;
return v77;
}
default: abort ();
}
}
}
}
