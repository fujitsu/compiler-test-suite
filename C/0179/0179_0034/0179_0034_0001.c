#include <stdlib.h>
extern float v1 (float, unsigned char, float);
extern float (*v2) (float, unsigned char, float);
extern double v3 (unsigned int, signed char);
extern double (*v4) (unsigned int, signed char);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern signed int v7 (unsigned char, signed short, signed int, signed short);
extern signed int (*v8) (unsigned char, signed short, signed int, signed short);
extern void v9 (signed char, signed int, signed char, double);
extern void (*v10) (signed char, signed int, signed char, double);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
