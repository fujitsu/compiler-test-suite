#include <stdlib.h>
extern double v1 (unsigned int);
extern double (*v2) (unsigned int);
signed int v3 (double);
signed int (*v4) (double) = v3;
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern double v7 (unsigned char, signed char, float);
extern double (*v8) (unsigned char, signed char, float);
extern unsigned char v9 (signed int, signed char, signed short, signed int);
extern unsigned char (*v10) (signed int, signed char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (double v17) {
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
