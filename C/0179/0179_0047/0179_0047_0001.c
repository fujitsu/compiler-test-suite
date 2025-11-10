#include <stdlib.h>
extern double v1 (signed short, signed int, signed short);
extern double (*v2) (signed short, signed int, signed short);
unsigned char v3 (signed char, unsigned short);
unsigned char (*v4) (signed char, unsigned short) = v3;
unsigned int v5 (signed char, unsigned int, float, unsigned short);
unsigned int (*v6) (signed char, unsigned int, float, unsigned short) = v5;
extern signed short v7 (signed char, unsigned short, double);
extern signed short (*v8) (signed char, unsigned short, double);
extern double v9 (float);
extern double (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (signed char v21, unsigned int v22, float v23, unsigned short v24) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v3 (signed char v25, unsigned short v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 1: return 'A';
default: abort ();
}
}
}
