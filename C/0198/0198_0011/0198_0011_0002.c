#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed int v1 (void);
signed int (*v2) (void) = v1;
extern void v3 (signed char, struct ss1, signed int, signed short);
extern void (*v4) (signed char, struct ss1, signed int, signed short);
extern union uu1 v5 (void);
extern union uu1 (*v6) (void);
extern signed short v7 (unsigned char, struct ss1);
extern signed short (*v8) (unsigned char, struct ss1);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v65 = { 16052, -40686912, 16944582U, 11U, };
unsigned char v64 = 218;
signed int v63 = -164614089;

signed int v1 (void)
{
{
for (;;) {
unsigned int v68 = 1431657185U;
unsigned char v67 = 111;
union uu1 v66 = {-1241354157 };
trace++;
switch (trace)
{
case 0: 
{
unsigned char v69;
struct ss1 v70;
signed short v71;
v69 = v67 - 202;
v70.f3 = 54217;
v70.f2 = 57490741;
v70.f1 = 23260539U;
v70.f0 = 299U;
v71 = (*v8) (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 18: 
return -1493554870;
default: abort ();
}
}
}
}
