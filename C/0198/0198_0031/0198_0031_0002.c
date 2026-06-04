#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
signed char v1 (double);
signed char (*v2) (double) = v1;
extern float v3 (signed int);
extern float (*v4) (signed int);
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern signed short v9 (float, signed char, union uu0, signed char);
extern signed short (*v10) (float, signed char, union uu0, signed char);
extern int history[];
extern int history_index;
extern int trace;
struct ss1 v43 = { 26241, 4092951, 28363596U, 204U, };
struct ss0 v42 = { 784737U, 1044U, 13225, };
unsigned char v41 = 23;

signed int v7 (void)
{
{
for (;;) {
signed int v46 = 1149005036;
signed char v45 = -11;
signed short v44 = -28989;
trace++;
switch (trace)
{
case 3: 
return v46;
case 5: 
return -81284850;
case 10: 
return 1132285734;
default: abort ();
}
}
}
}

signed char v1 (double v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 20;
unsigned int v49 = 4128281627U;
float v48 = -2101027435.61413F;
trace++;
switch (trace)
{
case 0: 
{
float v51;
signed char v52;
union uu0 v53;
signed char v54;
signed short v55;
v51 = v48;
v52 = v50 + -13;
v53.f0 = v50;
v54 = v50 - -18;
v55 = v9 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 8: 
{
signed int v56;
float v57;
v56 = -217449334 - -348078203;
v57 = v3 (v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return v50;
default: abort ();
}
}
}
}
