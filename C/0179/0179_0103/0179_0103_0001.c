#include <stdlib.h>
extern unsigned short v1 (signed char, float, signed char, double);
extern unsigned short (*v2) (signed char, float, signed char, double);
extern unsigned short v3 (float, double);
extern unsigned short (*v4) (float, double);
extern double v5 (signed char, signed char, signed char, unsigned short);
extern double (*v6) (signed char, signed char, signed char, unsigned short);
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
extern signed short v9 (double, float, unsigned int);
extern signed short (*v10) (double, float, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (unsigned char v42) {
history[history_index++] = (int)v42;
for (;;) {
trace++;
switch (trace) {
case 10: return 'A';
case 8: return 'A';
case 3: return 'A';
case 1: return 'A';
default: abort ();
}
}
}
