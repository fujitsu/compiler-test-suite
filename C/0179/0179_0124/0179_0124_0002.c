#include <stdlib.h>
extern signed short v1 (signed char, unsigned int, signed short);
extern signed short (*v2) (signed char, unsigned int, signed short);
extern unsigned char v3 (unsigned short, double, unsigned char, signed short);
extern unsigned char (*v4) (unsigned short, double, unsigned char, signed short);
signed char v5 (signed short, double);
signed char (*v6) (signed short, double) = v5;
float v7 (signed char);
float (*v8) (signed char) = v7;
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed char v24) {
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

signed char v5 (signed short v25, double v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
