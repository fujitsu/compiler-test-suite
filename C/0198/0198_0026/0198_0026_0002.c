#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned char v3 (unsigned int, double);
extern unsigned char (*v4) (unsigned int, double);
union uu1 v5 (unsigned char, struct ss0, unsigned short);
union uu1 (*v6) (unsigned char, struct ss0, unsigned short) = v5;
static struct ss1 v7 (unsigned int, signed char, signed short);
static struct ss1 (*v8) (unsigned int, signed char, signed short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v34 = 35;
float v33 = -995548930.19200F;
signed char v32 = 108;

static struct ss1 v7 (unsigned int v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1474792235;
unsigned char v39 = 200;
union uu0 v38 = {3595403022U };
trace++;
switch (trace)
{
case 5: 
{
unsigned char v41;
v41 = (*v10) ();
history[history_index++] = (int)v41;
}
break;
case 7: 
{
struct ss1 v42;
v42.f3 = 8693;
v42.f2 = 26108228;
v42.f1 = 10811180U;
v42.f0 = 455U;
return v42;
}
case 9: 
{
unsigned char v43;
v43 = v9 ();
history[history_index++] = (int)v43;
}
break;
case 11: 
{
struct ss1 v44;
v44.f3 = 20815;
v44.f2 = 55491538;
v44.f1 = 10437879U;
v44.f0 = 255U;
return v44;
}
default: abort ();
}
}
}
}

union uu1 v5 (unsigned char v45, struct ss0 v46, unsigned short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46.f2;
history[history_index++] = (int)v46.f1;
history[history_index++] = (int)v46.f0;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1998245599;
signed int v49 = -1373347798;
unsigned short v48 = 41582;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v51;
struct ss0 v52;
unsigned short v53;
union uu1 v54;
v51 = v45 - 183;
v52.f2 = 256360U;
v52.f1 = 583969U;
v52.f0 = 40830;
v53 = v47 - v48;
v54 = v5 (v51, v52, v53);
history[history_index++] = (int)v54.f2;
}
break;
case 3: 
{
unsigned char v55;
struct ss0 v56;
unsigned short v57;
union uu1 v58;
v55 = v45 + v45;
v56.f2 = 820568U;
v56.f1 = 30304U;
v56.f0 = v47;
v57 = 20764 - v47;
v58 = (*v6) (v55, v56, v57);
history[history_index++] = (int)v58.f2;
}
break;
case 4: 
{
unsigned int v59;
signed char v60;
signed short v61;
struct ss1 v62;
v59 = 3254531581U - 2234453547U;
v60 = -101 - -66;
v61 = 4618 - -5494;
v62 = v7 (v59, v60, v61);
history[history_index++] = (int)v62.f3;
history[history_index++] = (int)v62.f2;
history[history_index++] = (int)v62.f1;
history[history_index++] = (int)v62.f0;
}
break;
case 8: 
{
unsigned int v63;
signed char v64;
signed short v65;
struct ss1 v66;
v63 = 1057904805U + 153447194U;
v64 = -14 - -24;
v65 = 14244 + -25400;
v66 = v7 (v63, v64, v65);
history[history_index++] = (int)v66.f3;
history[history_index++] = (int)v66.f2;
history[history_index++] = (int)v66.f1;
history[history_index++] = (int)v66.f0;
}
break;
case 12: 
{
union uu1 v67;
v67.f2 = v45;
return v67;
}
case 13: 
{
union uu1 v68;
v68.f2 = 100;
return v68;
}
case 14: 
{
union uu1 v69;
v69.f2 = v45;
return v69;
}
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned char v72 = 31;
struct ss1 v71 = { 50350, 389236, 25389357U, 16U, };
union uu1 v70 = {1910142422 };
trace++;
switch (trace)
{
case 0: 
{
unsigned int v73;
double v74;
unsigned char v75;
v73 = 606597961U - 379860197U;
#if defined(__aarch64__)
 v74 = -2147483648;
#else
v74 = -1710929073920393076.10662;
#endif
v75 = (*v4) (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 16: 
return 55;
default: abort ();
}
}
}
}
