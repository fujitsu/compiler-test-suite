#include <stdlib.h>
extern float v1 (unsigned char);
extern float (*v2) (unsigned char);
extern unsigned char v3 (double, signed short);
extern unsigned char (*v4) (double, signed short);
void v5 (signed char, signed short);
void (*v6) (signed char, signed short) = v5;
extern unsigned char v7 (double, float, float);
extern unsigned char (*v8) (double, float, float);
void v9 (signed short, float, signed int);
void (*v10) (signed short, float, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (signed short v33, float v34, signed int v35) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
for (;;) {
trace++;
switch (trace) {
case 11: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v5 (signed char v36, signed short v37) {
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
for (;;) {
trace++;
switch (trace) {
case 5: return;
case 3: return;
default: abort ();
}
}
}
