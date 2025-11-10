#include <stdlib.h>
extern unsigned short v1 (signed char, double, float);
extern unsigned short (*v2) (signed char, double, float);
extern unsigned int v3 (unsigned int, double, signed char, float);
extern unsigned int (*v4) (unsigned int, double, signed char, float);
extern signed short v5 (void);
extern signed short (*v6) (void);
double v7 (double, double, unsigned int);
double (*v8) (double, double, unsigned int) = v7;
extern signed int v9 (signed char, unsigned int);
extern signed int (*v10) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;

double v7 (double v24, double v25, unsigned int v26) {
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
