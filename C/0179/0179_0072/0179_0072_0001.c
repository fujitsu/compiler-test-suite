#include <stdlib.h>
extern signed short v1 (float, double, double);
extern signed short (*v2) (float, double, double);
float v3 (unsigned int);
float (*v4) (unsigned int) = v3;
extern float v5 (double, double, unsigned int, signed short);
extern float (*v6) (double, double, unsigned int, signed short);
extern double v7 (signed int, unsigned short);
extern double (*v8) (signed int, unsigned short);
extern signed char v9 (signed short, float, double, signed short);
extern signed char (*v10) (signed short, float, double, signed short);
extern int history[];
extern int history_index;
extern int trace;

float v3 (unsigned int v46) {
history[history_index++] = (int)v46;
for (;;) {
trace++;
switch (trace) {
case 15: return 1.234;
case 11: return 1.234;
case 7: 
{
signed short v47;
float v48;
double v49;
signed short v50;
signed char v51;
v47=-111;
v48=1.234;
v49=111111.2222222;
v50=-111;
v51 = (*v10) (v47, v48, v49, v50);
history[history_index++] = (int)v51;
return 1.234;
}
break;
default: abort ();
}
}
}
