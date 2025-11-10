#include <stdlib.h>
extern double v1 (signed short, double, signed short);
extern double (*v2) (signed short, double, signed short);
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern float v5 (double, double, float, double);
extern float (*v6) (double, double, float, double);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
extern int history[];
extern int history_index;
extern int trace;

signed char v3 (unsigned int v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
