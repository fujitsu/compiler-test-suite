#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed short v3 (unsigned short, unsigned char, double);
extern signed short (*v4) (unsigned short, unsigned char, double);
float v5 (unsigned char);
float (*v6) (unsigned char) = v5;
extern unsigned int v7 (unsigned short, signed int, float);
extern unsigned int (*v8) (unsigned short, signed int, float);
signed short v9 (unsigned short, signed char, float);
signed short (*v10) (unsigned short, signed char, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (unsigned short v13, signed char v14, float v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
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

float v5 (unsigned char v16) {
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
