#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v1 (float, unsigned char);
unsigned short (*v2) (float, unsigned char) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (float, signed int);
extern unsigned int (*v6) (float, signed int);
static union uu1 v7 (unsigned char, signed short, struct ss0);
static union uu1 (*v8) (unsigned char, signed short, struct ss0) = v7;
extern struct ss0 v9 (unsigned short, unsigned char, struct ss1, unsigned char);
extern struct ss0 (*v10) (unsigned short, unsigned char, struct ss1, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
float v56 = 1171388090.31444F;
double v55 = -4214756417463366150.54693;
signed int v54 = 1314070000;

static union uu1 v7 (unsigned char v57, signed short v58, struct ss0 v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59.f2;
history[history_index++] = (int)v59.f1;
history[history_index++] = (int)v59.f0;
{
for (;;) {
signed short v62 = -26651;
union uu0 v61 = {625735235U };
double v60 = -8872591896353581546.27110;
trace++;
switch (trace)
{
case 1: 
{
union uu1 v63;
v63.f2 = v57;
return v63;
}
default: abort ();
}
}
}
}

unsigned short v1 (float v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
union uu0 v68 = {164047148U };
signed short v67 = 23729;
signed short v66 = 20235;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v69;
signed short v70;
struct ss0 v71;
union uu1 v72;
v69 = v65 - 169;
v70 = v66 + v67;
v71.f2 = 799137U;
v71.f1 = 409186U;
v71.f0 = 53147;
v72 = v7 (v69, v70, v71);
history[history_index++] = (int)v72.f2;
}
break;
case 2: 
{
unsigned short v73;
unsigned char v74;
struct ss1 v75;
unsigned char v76;
struct ss0 v77;
v73 = 63508 - 9843;
v74 = 230 - v65;
v75.f3 = 44846;
v75.f2 = 30214868;
v75.f1 = 59270158U;
v75.f0 = 145U;
v76 = v65 + v65;
v77 = v9 (v73, v74, v75, v76);
history[history_index++] = (int)v77.f2;
history[history_index++] = (int)v77.f1;
history[history_index++] = (int)v77.f0;
}
break;
case 4: 
{
float v78;
unsigned char v79;
unsigned short v80;
v78 = v64;
v79 = 225 + v65;
v80 = (*v2) (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 5: 
{
float v81;
signed int v82;
unsigned int v83;
v81 = 350658663.39930F;
v82 = 1699792447 - 1873956867;
v83 = (*v6) (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 7: 
{
unsigned short v84;
unsigned char v85;
struct ss1 v86;
unsigned char v87;
struct ss0 v88;
v84 = 21428 + 44226;
v85 = 159 - v65;
v86.f3 = 424;
v86.f2 = -5313402;
v86.f1 = 22012769U;
v86.f0 = 283U;
v87 = v65 + 116;
v88 = v9 (v84, v85, v86, v87);
history[history_index++] = (int)v88.f2;
history[history_index++] = (int)v88.f1;
history[history_index++] = (int)v88.f0;
}
break;
case 11: 
return 26610;
case 15: 
return 32569;
case 17: 
return 28529;
case 18: 
return 47351;
case 20: 
return 39502;
default: abort ();
}
}
}
}
