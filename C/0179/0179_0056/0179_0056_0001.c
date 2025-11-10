#include <stdlib.h>
extern double v1 (float, double, unsigned int);
extern double (*v2) (float, double, unsigned int);
double v3 (void);
double (*v4) (void) = v3;
extern float v5 (unsigned char, unsigned char, signed int);
extern float (*v6) (unsigned char, unsigned char, signed int);
extern double v7 (signed short, signed int, unsigned int);
extern double (*v8) (signed short, signed int, unsigned int);
signed char v9 (signed short, unsigned short, float, signed char);
signed char (*v10) (signed short, unsigned short, float, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed char v9 (signed short v21, unsigned short v22, float v23, signed char v24) {
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

double v3 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
