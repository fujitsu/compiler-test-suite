#include <stdlib.h>
extern signed char v1 (signed char, signed int);
extern signed char (*v2) (signed char, signed int);
extern void v3 (signed short, double, signed int, float);
extern void (*v4) (signed short, double, signed int, float);
float v5 (unsigned char, float);
float (*v6) (unsigned char, float) = v5;
extern float v7 (unsigned short);
extern float (*v8) (unsigned short);
unsigned int v9 (signed char, signed short, double, signed int);
unsigned int (*v10) (signed char, signed short, double, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (signed char v18, signed short v19, double v20, signed int v21) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
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

float v5 (unsigned char v22, float v23) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 1: return 1.234;
default: abort ();
}
}
}
