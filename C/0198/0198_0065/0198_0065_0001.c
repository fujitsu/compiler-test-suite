#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern struct ss1 v1 (struct ss1);
extern struct ss1 (*v2) (struct ss1);
void v3 (struct ss1, unsigned char);
void (*v4) (struct ss1, unsigned char) = v3;
extern signed short v5 (struct ss1, signed int);
extern signed short (*v6) (struct ss1, signed int);
extern unsigned int v7 (signed short, signed char);
extern unsigned int (*v8) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v25 = -305117144;
unsigned char v24 = 85;
float v23 = -905488698.23365F;

void v3 (struct ss1 v26, unsigned char v27)
{
history[history_index++] = (int)v26.f3;
history[history_index++] = (int)v26.f2;
history[history_index++] = (int)v26.f1;
history[history_index++] = (int)v26.f0;
history[history_index++] = (int)v27;
{
for (;;) {
union uu1 v30 = {-1017059152 };
struct ss1 v29 = { 52553, 32816879, 16802093U, 342U, };
unsigned int v28 = 2793586804U;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
{
struct ss1 v31;
unsigned char v32;
v31.f3 = 9452;
v31.f2 = 52355340;
v31.f1 = 64355319U;
v31.f0 = 427U;
v32 = 23 + v27;
(*v4) (v31, v32);
}
break;
case 8: 
{
struct ss1 v33;
unsigned char v34;
v33.f3 = 25767;
v33.f2 = -53553777;
v33.f1 = 55027719U;
v33.f0 = 349U;
v34 = v27 + 14;
(*v4) (v33, v34);
}
break;
case 9: 
{
signed short v35;
signed char v36;
unsigned int v37;
v35 = 28762 - 12329;
v36 = -41 + 119;
v37 = (*v8) (v35, v36);
history[history_index++] = (int)v37;
}
break;
case 11: 
return;
case 12: 
return;
case 13: 
return;
default: abort ();
}
}
}
}
