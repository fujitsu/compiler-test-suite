#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (unsigned short, signed int, float, union uu0);
extern signed int (*v4) (unsigned short, signed int, float, union uu0);
extern float v5 (signed char, unsigned int);
extern float (*v6) (signed char, unsigned int);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed char v9 (unsigned int, unsigned int, unsigned char, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v26 = 1679621227U;
union uu0 v25 = {3526692880U };
union uu1 v24 = {909354447 };

signed short v7 (void)
{
{
for (;;) {
unsigned short v29 = 51586;
struct ss0 v28 = { 755942U, 621293U, 28220, };
union uu0 v27 = {2975968879U };
trace++;
switch (trace)
{
case 4: 
return 30671;
case 6: 
{
unsigned int v30;
unsigned int v31;
unsigned char v32;
signed short v33;
signed char v34;
v30 = 2208962744U + 1142794316U;
v31 = 3996665664U + 1231303754U;
v32 = 150 + 35;
v33 = 19102 + 521;
v34 = (*v10) (v30, v31, v32, v33);
history[history_index++] = (int)v34;
}
break;
case 8: 
{
signed short v35;
v35 = (*v8) ();
history[history_index++] = (int)v35;
}
break;
case 9: 
{
unsigned int v36;
unsigned int v37;
unsigned char v38;
signed short v39;
signed char v40;
v36 = 3935207437U - 2656203352U;
v37 = 3492259364U - 4247321373U;
v38 = 238 - 58;
v39 = -2519 + -2706;
v40 = (*v10) (v36, v37, v38, v39);
history[history_index++] = (int)v40;
}
break;
case 11: 
return -6154;
case 13: 
return -11228;
case 14: 
return 17655;
case 16: 
return 27062;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v43 = 36;
double v42 = -6888650352579655024.46836;
float v41 = -1127695236.29591F;
trace++;
switch (trace)
{
case 0: 
return -1462;
case 1: 
return 29517;
case 2: 
{
signed char v44;
unsigned int v45;
float v46;
v44 = 83 - 127;
v45 = 2162308028U + 605415908U;
v46 = (*v6) (v44, v45);
history[history_index++] = (int)v46;
}
break;
case 18: 
return 16888;
default: abort ();
}
}
}
}
