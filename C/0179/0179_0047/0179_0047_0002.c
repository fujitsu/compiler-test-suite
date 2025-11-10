#include <stdlib.h>
extern double v1 (signed short, signed int, signed short);
extern double (*v2) (signed short, signed int, signed short);
extern unsigned char v3 (signed char, unsigned short);
extern unsigned char (*v4) (signed char, unsigned short);
extern unsigned int v5 (signed char, unsigned int, float, unsigned short);
extern unsigned int (*v6) (signed char, unsigned int, float, unsigned short);
signed short v7 (signed char, unsigned short, double);
signed short (*v8) (signed char, unsigned short, double) = v7;
double v9 (float);
double (*v10) (float) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (float v27) {
history[history_index++] = (int)v27;
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

signed short v7 (signed char v28, unsigned short v29, double v30) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
