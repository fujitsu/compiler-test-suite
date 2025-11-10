#include <stdlib.h>
unsigned short v1 (float, signed int, float);
unsigned short (*v2) (float, signed int, float) = v1;
signed short v3 (signed short, float, signed int, unsigned short);
signed short (*v4) (signed short, float, signed int, unsigned short) = v3;
extern signed short v5 (unsigned int, unsigned short, unsigned short, signed int);
extern signed short (*v6) (unsigned int, unsigned short, unsigned short, signed int);
extern void v7 (signed short, signed char, signed char, unsigned int);
extern void (*v8) (signed short, signed char, signed char, unsigned int);
extern double v9 (double, double);
extern double (*v10) (double, double);
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (signed short v25, float v26, signed int v27, unsigned short v28) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (float v29, signed int v30, float v31) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
for (;;) {
trace++;
switch (trace) {
case 4: return 111;
case 2: 
{
double v32;
double v33;
double v34;
v32=111111.2222222;
v33=111111.2222222;
v34 = v9 (v32, v33);
history[history_index++] = (int)v34;
return 111;
}
break;
case 0: 
{
double v35;
double v36;
double v37;
v35=111111.2222222;
v36=111111.2222222;
v37 = v9 (v35, v36);
history[history_index++] = (int)v37;
return 111;
}
break;
default: abort ();
}
}
}
