#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v3 (float, float, unsigned char, struct ss1);
struct ss0 (*v4) (float, float, unsigned char, struct ss1) = v3;
extern double v9 (union uu1, signed short, float);
extern double (*v10) (union uu1, signed short, float);
extern int history[];
extern int history_index;
extern int trace;
union uu1 v54 = {831949248 };
signed int v53 = -905732574;
union uu1 v52 = {-1861376019 };

struct ss0 v3 (float v55, float v56, unsigned char v57, struct ss1 v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58.f3;
history[history_index++] = (int)v58.f2;
history[history_index++] = (int)v58.f1;
history[history_index++] = (int)v58.f0;
{
for (;;) {
unsigned char v61 = 143;
double v60 = -5026970434414987440.23858;
unsigned int v59 = 2399201999U;
trace++;
switch (trace)
{
case 7: 
{
float v62;
float v63;
unsigned char v64;
struct ss1 v65;
struct ss0 v66;
v62 = 69039363.9900F;
v63 = v56;
v64 = v61 - v57;
v65.f3 = 34926;
v65.f2 = -39734708;
v65.f1 = 35307177U;
v65.f0 = 295U;
v66 = (*v4) (v62, v63, v64, v65);
history[history_index++] = (int)v66.f2;
history[history_index++] = (int)v66.f1;
history[history_index++] = (int)v66.f0;
}
break;
case 8: 
{
float v67;
float v68;
unsigned char v69;
struct ss1 v70;
struct ss0 v71;
v67 = v56;
v68 = -648754639.19129F;
v69 = v61 + v61;
v70.f3 = 44683;
v70.f2 = 45245564;
v70.f1 = 8835591U;
v70.f0 = 330U;
v71 = (*v4) (v67, v68, v69, v70);
history[history_index++] = (int)v71.f2;
history[history_index++] = (int)v71.f1;
history[history_index++] = (int)v71.f0;
}
break;
case 9: 
{
struct ss0 v72;
v72.f2 = 426827U;
v72.f1 = 429670U;
v72.f0 = 32082;
return v72;
}
case 10: 
{
float v73;
float v74;
unsigned char v75;
struct ss1 v76;
struct ss0 v77;
v73 = v56;
v74 = v56;
v75 = v57 - v57;
v76.f3 = 48130;
v76.f2 = -31521760;
v76.f1 = 48751275U;
v76.f0 = 433U;
v77 = v3 (v73, v74, v75, v76);
history[history_index++] = (int)v77.f2;
history[history_index++] = (int)v77.f1;
history[history_index++] = (int)v77.f0;
}
break;
case 11: 
{
struct ss0 v78;
v78.f2 = 245528U;
v78.f1 = 853465U;
v78.f0 = 30375;
return v78;
}
case 12: 
{
struct ss0 v79;
v79.f2 = 496110U;
v79.f1 = 122439U;
v79.f0 = 62865;
return v79;
}
case 13: 
{
struct ss0 v80;
v80.f2 = 34424U;
v80.f1 = 277045U;
v80.f0 = 38092;
return v80;
}
default: abort ();
}
}
}
}
