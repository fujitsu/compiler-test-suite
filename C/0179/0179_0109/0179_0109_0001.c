#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern float v3 (void);
extern float (*v4) (void);
extern unsigned short v5 (signed short, signed char, signed int, double);
extern unsigned short (*v6) (signed short, signed char, signed int, double);
float v7 (signed short, signed int, float);
float (*v8) (signed short, signed int, float) = v7;
extern void v9 (signed int, signed int, double, double);
extern void (*v10) (signed int, signed int, double, double);
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed short v20, signed int v21, float v22) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
