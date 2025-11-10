#include <stdlib.h>
extern double v1 (float);
extern double (*v2) (float);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed char, signed short);
extern void (*v6) (signed short, signed char, signed short);
double v7 (void);
double (*v8) (void) = v7;
extern float v9 (unsigned short, unsigned int, unsigned int);
extern float (*v10) (unsigned short, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

double v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
