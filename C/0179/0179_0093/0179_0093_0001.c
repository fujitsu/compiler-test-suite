#include <stdlib.h>
extern unsigned short v1 (signed char, signed char, signed short, signed short);
extern unsigned short (*v2) (signed char, signed char, signed short, signed short);
extern float v3 (unsigned short, unsigned short, signed int, unsigned char);
extern float (*v4) (unsigned short, unsigned short, signed int, unsigned char);
unsigned int v5 (signed int, float, signed short, signed int);
unsigned int (*v6) (signed int, float, signed short, signed int) = v5;
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern double v9 (unsigned char, float, unsigned short);
extern double (*v10) (unsigned char, float, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (signed int v25, float v26, signed short v27, signed int v28) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
for (;;) {
trace++;
switch (trace) {
case 8: return 199999;
default: abort ();
}
}
}
