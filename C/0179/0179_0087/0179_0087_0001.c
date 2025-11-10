#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (unsigned short, signed char, signed char, float);
extern unsigned int (*v4) (unsigned short, signed char, signed char, float);
extern signed char v5 (double, unsigned short);
extern signed char (*v6) (double, unsigned short);
extern unsigned short v7 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short (*v8) (unsigned char, unsigned short, unsigned char, signed short);
unsigned int v9 (float, double, float, float);
unsigned int (*v10) (float, double, float, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (float v39, double v40, float v41, float v42) {
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
for (;;) {
trace++;
switch (trace) {
case 9: return 199999;
default: abort ();
}
}
}
