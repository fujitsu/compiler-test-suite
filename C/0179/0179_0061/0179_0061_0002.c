#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, signed short, signed short);
extern signed short (*v2) (unsigned int, signed short, signed short, signed short);
extern void v3 (unsigned short, signed int, unsigned char, signed int);
extern void (*v4) (unsigned short, signed int, unsigned char, signed int);
extern signed int v5 (unsigned char, float, signed char, unsigned char);
extern signed int (*v6) (unsigned char, float, signed char, unsigned char);
extern float v7 (signed int, double, float);
extern float (*v8) (signed int, double, float);
float v9 (signed char, signed int, unsigned char, float);
float (*v10) (signed char, signed int, unsigned char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (signed char v48, signed int v49, unsigned char v50, float v51) {
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
