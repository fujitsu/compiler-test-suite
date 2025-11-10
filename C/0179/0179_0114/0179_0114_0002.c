#include <stdlib.h>
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
extern unsigned char v3 (double, signed short);
extern unsigned char (*v4) (double, signed short);
extern void v5 (signed char, signed short);
extern void (*v6) (signed char, signed short);
unsigned char v7 (double, float, float);
unsigned char (*v8) (double, float, float) = v7;
extern void v9 (signed short, float, signed int);
extern void (*v10) (signed short, float, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (double v38, float v39, float v40) {
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
