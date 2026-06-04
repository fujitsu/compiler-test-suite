#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
union uu1 v1 (struct ss1, signed char, signed char, unsigned short);
union uu1 (*v2) (struct ss1, signed char, signed char, unsigned short) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed int v9 (struct ss0, struct ss1, unsigned short, float);
extern signed int (*v10) (struct ss0, struct ss1, unsigned short, float);
extern int history[];
extern int history_index;
extern int trace;
double v45 = -2349010809401223297.6125;
signed int v44 = -830899267;
double v43 = -8836046999546428243.42215;

union uu1 v1 (struct ss1 v46, signed char v47, signed char v48, unsigned short v49)
{
history[history_index++] = (int)v46.f3;
history[history_index++] = (int)v46.f2;
history[history_index++] = (int)v46.f1;
history[history_index++] = (int)v46.f0;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
double v52 = -7007716796219809950.44281;
union uu1 v51 = {222170108 };
signed short v50 = -20959;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v53;
signed char v54;
v53 = 1 - 58;
v54 = (*v6) (v53);
history[history_index++] = (int)v54;
}
break;
case 2: 
{
signed short v55;
v55 = (*v4) ();
history[history_index++] = (int)v55;
}
break;
case 4: 
{
struct ss0 v56;
struct ss1 v57;
unsigned short v58;
float v59;
signed int v60;
v56.f2 = 622343U;
v56.f1 = 305393U;
v56.f0 = v49;
v57.f3 = 37472;
v57.f2 = -50554111;
v57.f1 = 2945767U;
v57.f0 = 207U;
v58 = v49 - 23647;
v59 = -892821373.11522F;
v60 = (*v10) (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
{
struct ss0 v61;
struct ss1 v62;
unsigned short v63;
float v64;
signed int v65;
v61.f2 = 496447U;
v61.f1 = 467714U;
v61.f0 = 45308;
v62.f3 = v49;
v62.f2 = -26590742;
v62.f1 = 4323688U;
v62.f0 = 153U;
v63 = v49 - 21782;
v64 = -1152997002.36989F;
v65 = v9 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 8: 
{
unsigned char v66;
unsigned char v67;
v66 = 39 + 133;
v67 = v7 (v66);
history[history_index++] = (int)v67;
}
break;
case 12: 
{
union uu1 v68;
v68.f2 = 31;
return v68;
}
default: abort ();
}
}
}
}
