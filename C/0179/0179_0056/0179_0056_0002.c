#include <stdlib.h>
extern double v1 (float, double, unsigned int);
extern double (*v2) (float, double, unsigned int);
extern double v3 (void);
extern double (*v4) (void);
extern float v5 (unsigned char, unsigned char, signed int);
extern float (*v6) (unsigned char, unsigned char, signed int);
double v7 (signed short, signed int, unsigned int);
double (*v8) (signed short, signed int, unsigned int) = v7;
extern signed char v9 (signed short, unsigned short, float, signed char);
extern signed char (*v10) (signed short, unsigned short, float, signed char);
extern int history[];
extern int history_index;
extern int trace;

double v7 (signed short v25, signed int v26, unsigned int v27) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
