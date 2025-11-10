#include <stdlib.h>
extern float v1 (double, unsigned char, unsigned int, signed short);
extern float (*v2) (double, unsigned char, unsigned int, signed short);
extern double v3 (signed int, signed short, unsigned int);
extern double (*v4) (signed int, signed short, unsigned int);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern signed char v7 (unsigned short);
extern signed char (*v8) (unsigned short);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;

void v5 (unsigned int v25) {
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
