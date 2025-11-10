#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
signed short v3 (unsigned short, unsigned char, double);
signed short (*v4) (unsigned short, unsigned char, double) = v3;
extern float v5 (unsigned char);
extern float (*v6) (unsigned char);
unsigned int v7 (unsigned short, signed int, float);
unsigned int (*v8) (unsigned short, signed int, float) = v7;
extern signed short v9 (unsigned short, signed char, float);
extern signed short (*v10) (unsigned short, signed char, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (unsigned short v17, signed int v18, float v19) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
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

signed short v3 (unsigned short v20, unsigned char v21, double v22) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
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

unsigned int v1 (unsigned short v23) {
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 0: return 199999;
default: abort ();
}
}
}
