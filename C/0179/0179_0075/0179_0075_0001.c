#include <stdlib.h>
signed int v1 (signed short, signed short, double);
signed int (*v2) (signed short, signed short, double) = v1;
extern double v3 (void);
extern double (*v4) (void);
extern signed char v5 (signed int, unsigned char, float, unsigned int);
extern signed char (*v6) (signed int, unsigned char, float, unsigned int);
extern float v7 (void);
extern float (*v8) (void);
extern void v9 (signed short, double, unsigned short, signed int);
extern void (*v10) (signed short, double, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (signed short v19, signed short v20, double v21) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 0: return -199999;
default: abort ();
}
}
}
