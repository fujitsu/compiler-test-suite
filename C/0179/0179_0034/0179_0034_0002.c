#include <stdlib.h>
float v1 (float, unsigned char, float);
float (*v2) (float, unsigned char, float) = v1;
double v3 (unsigned int, signed char);
double (*v4) (unsigned int, signed char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (unsigned char, signed short, signed int, signed short);
extern signed int (*v8) (unsigned char, signed short, signed int, signed short);
extern void v9 (signed char, signed int, signed char, double);
extern void (*v10) (signed char, signed int, signed char, double);
extern int history[];
extern int history_index;
extern int trace;

double v3 (unsigned int v23, signed char v24) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
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

float v1 (float v25, unsigned char v26, float v27) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
case 2: return 1.234;
case 0: 
{
signed char v28;
signed int v29;
signed char v30;
double v31;
v28='a';
v29=-199999;
v30='a';
v31=111111.2222222;
(*v10) (v28, v29, v30, v31);
return 1.234;
}
break;
default: abort ();
}
}
}
