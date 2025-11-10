#include <stdlib.h>
extern signed short v1 (unsigned int, signed short, float);
extern signed short (*v2) (unsigned int, signed short, float);
unsigned int v3 (signed short, unsigned char, unsigned short, float);
unsigned int (*v4) (signed short, unsigned char, unsigned short, float) = v3;
extern double v5 (unsigned int);
extern double (*v6) (unsigned int);
extern signed int v7 (signed char, unsigned short, signed int, float);
extern signed int (*v8) (signed char, unsigned short, signed int, float);
extern double v9 (unsigned int, signed char, signed int);
extern double (*v10) (unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (signed short v61, unsigned char v62, unsigned short v63, float v64) {
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
for (;;) {
trace++;
switch (trace) {
case 1: return 199999;
default: abort ();
}
}
}
