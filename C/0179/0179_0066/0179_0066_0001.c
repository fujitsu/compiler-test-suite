#include <stdlib.h>
extern double v1 (signed int, float, unsigned char, signed char);
extern double (*v2) (signed int, float, unsigned char, signed char);
extern double v3 (void);
extern double (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern float v9 (signed short, unsigned char, signed int, unsigned char);
extern float (*v10) (signed short, unsigned char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (void) {
for (;;) {
trace++;
switch (trace) {
case 4: return 199999;
case 1: return 199999;
default: abort ();
}
}
}
