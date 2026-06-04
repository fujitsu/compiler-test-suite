#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
struct ss0 v1 (unsigned char, signed char);
struct ss0 (*v2) (unsigned char, signed char) = v1;
extern float v3 (unsigned int, signed char, union uu0, unsigned int);
extern float (*v4) (unsigned int, signed char, union uu0, unsigned int);
extern void v5 (float, union uu0, float, struct ss0);
extern void (*v6) (float, union uu0, float, struct ss0);
extern signed int v7 (union uu0);
extern signed int (*v8) (union uu0);
extern struct ss1 v9 (signed int);
extern struct ss1 (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v35 = {1257491934U };
union uu0 v34 = {3650148715U };
union uu0 v33 = {2033279641U };

struct ss0 v1 (unsigned char v36, signed char v37)
{
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 52205;
signed int v39 = -906483813;
union uu1 v38 = {-582185242 };
trace++;
switch (trace)
{
case 0: 
{
union uu0 v41;
signed int v42;
v41.f0 = v37;
v42 = v7 (v41);
history[history_index++] = (int)v42;
}
break;
case 2: 
{
signed int v43;
struct ss1 v44;
v43 = v39 + -1170877852;
v44 = (*v10) (v43);
history[history_index++] = (int)v44.f3;
history[history_index++] = (int)v44.f2;
history[history_index++] = (int)v44.f1;
history[history_index++] = (int)v44.f0;
}
break;
case 4: 
{
union uu0 v45;
signed int v46;
v45.f3 = v37;
v46 = (*v8) (v45);
history[history_index++] = (int)v46;
}
break;
case 6: 
{
signed int v47;
struct ss1 v48;
v47 = -1580724526 - -1941727956;
v48 = (*v10) (v47);
history[history_index++] = (int)v48.f3;
history[history_index++] = (int)v48.f2;
history[history_index++] = (int)v48.f1;
history[history_index++] = (int)v48.f0;
}
break;
case 8: 
{
struct ss0 v49;
v49.f2 = 170472U;
v49.f1 = 422676U;
v49.f0 = 17738;
return v49;
}
case 9: 
{
union uu0 v50;
signed int v51;
v50.f0 = 46;
v51 = v7 (v50);
history[history_index++] = (int)v51;
}
break;
case 13: 
{
struct ss0 v52;
v52.f2 = 41709U;
v52.f1 = 143819U;
v52.f0 = 9843;
return v52;
}
default: abort ();
}
}
}
}
