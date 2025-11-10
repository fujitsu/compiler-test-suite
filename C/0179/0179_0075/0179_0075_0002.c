#include <stdlib.h>
extern signed int v1 (signed short, signed short, double);
extern signed int (*v2) (signed short, signed short, double);
extern double v3 (void);
extern double (*v4) (void);
signed char v5 (signed int, unsigned char, float, unsigned int);
signed char (*v6) (signed int, unsigned char, float, unsigned int) = v5;
extern float v7 (void);
extern float (*v8) (void);
extern void v9 (signed short, double, unsigned short, signed int);
extern void (*v10) (signed short, double, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (signed int v22, unsigned char v23, float v24, unsigned int v25) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
