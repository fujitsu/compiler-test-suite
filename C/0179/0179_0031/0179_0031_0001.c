#include <stdlib.h>
float v1 (double, unsigned char, unsigned int, signed short);
float (*v2) (double, unsigned char, unsigned int, signed short) = v1;
extern double v3 (signed int, signed short, unsigned int);
extern double (*v4) (signed int, signed short, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
unsigned int v9 (unsigned short);
unsigned int (*v10) (unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned short v20) {
history[history_index++] = (int)v20;
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

float v1 (double v21, unsigned char v22, unsigned int v23, signed short v24) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
case 0: return 1.234;
default: abort ();
}
}
}
