#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned int, float);
extern signed short (*v2) (unsigned short, unsigned int, float);
signed short v3 (unsigned short, double, unsigned short);
signed short (*v4) (unsigned short, double, unsigned short) = v3;
extern float v5 (float, unsigned char, unsigned int);
extern float (*v6) (float, unsigned char, unsigned int);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
unsigned short v9 (double, signed char, float);
unsigned short (*v10) (double, signed char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (double v26, signed char v27, float v28) {
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
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

signed short v3 (unsigned short v29, double v30, unsigned short v31) {
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
