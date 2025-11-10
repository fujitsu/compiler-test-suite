#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern signed char v3 (double, signed short, unsigned short);
extern signed char (*v4) (double, signed short, unsigned short);
extern double v5 (signed int);
extern double (*v6) (signed int);
unsigned char v7 (double, double, unsigned char);
unsigned char (*v8) (double, double, unsigned char) = v7;
extern float v9 (signed short, signed char, float, unsigned char);
extern float (*v10) (signed short, signed char, float, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v7 (double v19, double v20, unsigned char v21) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 2: return 'A';
default: abort ();
}
}
}
