#include <stdlib.h>
extern signed short v1 (unsigned char, signed short, double);
extern signed short (*v2) (unsigned char, signed short, double);
signed int v3 (signed int, signed char, unsigned short);
signed int (*v4) (signed int, signed char, unsigned short) = v3;
extern double v5 (signed int, signed char);
extern double (*v6) (signed int, signed char);
extern float v7 (signed char, signed char, unsigned short, unsigned char);
extern float (*v8) (signed char, signed char, unsigned short, unsigned char);
extern unsigned short v9 (signed short, float);
extern unsigned short (*v10) (signed short, float);
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (signed int v45, signed char v46, unsigned short v47) {
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
