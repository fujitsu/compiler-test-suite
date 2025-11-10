#include <stdlib.h>
extern signed char v1 (signed short, double, signed char);
extern signed char (*v2) (signed short, double, signed char);
extern unsigned short v3 (double, unsigned char);
extern unsigned short (*v4) (double, unsigned char);
void v5 (unsigned short, unsigned char, signed int, double);
void (*v6) (unsigned short, unsigned char, signed int, double) = v5;
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
signed int v9 (unsigned int);
signed int (*v10) (unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (unsigned int v17) {
history[history_index++] = (int)v17;
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

void v5 (unsigned short v18, unsigned char v19, signed int v20, double v21) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
