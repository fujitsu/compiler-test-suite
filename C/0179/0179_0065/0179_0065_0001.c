#include <stdlib.h>
extern void v1 (signed short, signed short, signed int, signed int);
extern void (*v2) (signed short, signed short, signed int, signed int);
extern signed short v3 (float, float);
extern signed short (*v4) (float, float);
void v5 (float);
void (*v6) (float) = v5;
unsigned short v7 (unsigned int, signed short);
unsigned short (*v8) (unsigned int, signed short) = v7;
signed short v9 (unsigned int, double, unsigned short);
signed short (*v10) (unsigned int, double, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (unsigned int v21, double v22, unsigned short v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
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

unsigned short v7 (unsigned int v24, signed short v25) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
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

void v5 (float v26) {
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
