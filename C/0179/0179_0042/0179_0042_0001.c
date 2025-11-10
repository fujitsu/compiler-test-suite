#include <stdlib.h>
extern unsigned short v1 (float, signed int, float);
extern unsigned short (*v2) (float, signed int, float);
extern signed short v3 (signed short, float, signed int, unsigned short);
extern signed short (*v4) (signed short, float, signed int, unsigned short);
signed short v5 (unsigned int, unsigned short, unsigned short, signed int);
signed short (*v6) (unsigned int, unsigned short, unsigned short, signed int) = v5;
extern void v7 (signed short, signed char, signed char, unsigned int);
extern void (*v8) (signed short, signed char, signed char, unsigned int);
double v9 (double, double);
double (*v10) (double, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (double v19, double v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 3: return 111111.2222222;
case 1: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (unsigned int v21, unsigned short v22, unsigned short v23, signed int v24) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
