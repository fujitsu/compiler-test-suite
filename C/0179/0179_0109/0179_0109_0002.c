#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern float v3 (void);
extern float (*v4) (void);
extern unsigned short v5 (signed short, signed char, signed int, double);
extern unsigned short (*v6) (signed short, signed char, signed int, double);
extern float v7 (signed short, signed int, float);
extern float (*v8) (signed short, signed int, float);
void v9 (signed int, signed int, double, double);
void (*v10) (signed int, signed int, double, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (signed int v23, signed int v24, double v25, double v26) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
