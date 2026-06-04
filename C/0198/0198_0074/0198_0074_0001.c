#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
struct ss1 v7 (unsigned int, unsigned char);
struct ss1 (*v8) (unsigned int, unsigned char) = v7;
extern int history[];
extern int history_index;
extern int trace;
signed short v20 = 31118;
unsigned char v19 = 141;
union uu1 v18 = {616164244 };

struct ss1 v7 (unsigned int v21, unsigned char v22)
{
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
{
for (;;) {
union uu1 v25 = {-1843970715 };
signed short v24 = 20016;
struct ss0 v23 = { 158552U, 677697U, 33848, };
trace++;
switch (trace)
{
case 3: 
{
unsigned char v26;
float v27;
v26 = 20 - v22;
v27 = (*v2) (v26);
history[history_index++] = (int)v27;
}
break;
case 5: 
{
unsigned char v28;
float v29;
v28 = v22 + 224;
v29 = (*v2) (v28);
history[history_index++] = (int)v29;
}
break;
case 10: 
{
struct ss1 v30;
v30.f3 = 62313;
v30.f2 = -1650065;
v30.f1 = 40696527U;
v30.f0 = 396U;
return v30;
}
case 15: 
{
struct ss1 v31;
v31.f3 = 6850;
v31.f2 = -49325385;
v31.f1 = 43086626U;
v31.f0 = 176U;
return v31;
}
case 17: 
{
struct ss1 v32;
v32.f3 = 43170;
v32.f2 = -50885528;
v32.f1 = 40599746U;
v32.f0 = 364U;
return v32;
}
default: abort ();
}
}
}
}
