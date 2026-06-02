#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (unsigned short, signed int, float, union uu0);
signed int (*v4) (unsigned short, signed int, float, union uu0) = v3;
extern float v5 (signed char, unsigned int);
extern float (*v6) (signed char, unsigned int);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed char v9 (unsigned int, unsigned int, unsigned char, signed short);
signed char (*v10) (unsigned int, unsigned int, unsigned char, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 40971;
signed int v48 = -1137425533;
union uu0 v47 = {586050638U };

signed char v9 (unsigned int v50, unsigned int v51, unsigned char v52, signed short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -19054;
union uu1 v55 = {1371567452 };
signed short v54 = 14299;
trace++;
switch (trace)
{
case 7: 
{
signed short v57;
v57 = (*v8) ();
history[history_index++] = (int)v57;
}
break;
case 10: 
{
signed short v58;
v58 = v7 ();
history[history_index++] = (int)v58;
}
break;
case 12: 
return 90;
case 15: 
return -89;
default: abort ();
}
}
}
}

signed int v3 (unsigned short v59, signed int v60, float v61, union uu0 v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62.f3;
{
for (;;) {
union uu0 v65 = {1815954081U };
unsigned short v64 = 1531;
unsigned char v63 = 105;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
