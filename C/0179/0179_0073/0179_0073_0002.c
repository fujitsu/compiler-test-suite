#include <stdlib.h>
extern signed short v1 (double, double, signed short, double);
extern signed short (*v2) (double, double, signed short, double);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed short v5 (float, double, signed char, float);
extern signed short (*v6) (float, double, signed char, float);
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern unsigned int v9 (unsigned short, unsigned char, float);
extern unsigned int (*v10) (unsigned short, unsigned char, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (unsigned short v55) {
history[history_index++] = (int)v55;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
