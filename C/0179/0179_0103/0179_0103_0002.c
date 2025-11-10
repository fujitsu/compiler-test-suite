#include <stdlib.h>
extern unsigned short v1 (signed char, float, signed char, double);
extern unsigned short (*v2) (signed char, float, signed char, double);
extern unsigned short v3 (float, double);
extern unsigned short (*v4) (float, double);
extern double v5 (signed char, signed char, signed char, unsigned short);
extern double (*v6) (signed char, signed char, signed char, unsigned short);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
signed short v9 (double, float, unsigned int);
signed short (*v10) (double, float, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (double v43, float v44, unsigned int v45) {
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
