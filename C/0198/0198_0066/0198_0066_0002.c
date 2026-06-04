#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed short v5 (float, unsigned char, unsigned int, unsigned short);
signed short (*v6) (float, unsigned char, unsigned int, unsigned short) = v5;
signed short v7 (unsigned short, signed char, unsigned short, struct ss0);
signed short (*v8) (unsigned short, signed char, unsigned short, struct ss0) = v7;
struct ss0 v9 (unsigned char, signed short, unsigned char, unsigned short);
struct ss0 (*v10) (unsigned char, signed short, unsigned char, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;
float v49 = 13259785.9066F;
unsigned int v48 = 1274386892U;
union uu0 v47 = {3822596374U };

struct ss0 v9 (unsigned char v50, signed short v51, unsigned char v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
union uu1 v56 = {-780298125 };
signed char v55 = 4;
signed char v54 = -97;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v57, signed char v58, unsigned short v59, struct ss0 v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60.f2;
history[history_index++] = (int)v60.f1;
history[history_index++] = (int)v60.f0;
{
for (;;) {
signed int v63 = 1668533064;
unsigned int v62 = 3197347253U;
double v61 = 4518430263346801195.55279;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v64;
signed char v65;
unsigned short v66;
struct ss0 v67;
signed short v68;
v64 = 10662 - v59;
v65 = v58 + 51;
v66 = v59 + v57;
v67.f2 = 936783U;
v67.f1 = 188057U;
v67.f0 = v59;
v68 = (*v8) (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 5: 
{
unsigned short v69;
signed char v70;
unsigned short v71;
struct ss0 v72;
signed short v73;
v69 = 61914 - v59;
v70 = v58 + 56;
v71 = 12808 - v59;
v72.f2 = 95252U;
v72.f1 = 311742U;
v72.f0 = 24587;
v73 = (*v8) (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 6: 
{
unsigned char v74;
v74 = (*v4) ();
history[history_index++] = (int)v74;
}
break;
case 14: 
return -10397;
case 15: 
return -9372;
case 16: 
return 13370;
default: abort ();
}
}
}
}

signed short v5 (float v75, unsigned char v76, unsigned int v77, unsigned short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -521508524;
float v80 = 1213779441.46715F;
double v79 = 4883004911996991570.61496;
trace++;
switch (trace)
{
case 1: 
return -8185;
default: abort ();
}
}
}
}
