#include <stdlib.h>
unsigned char v1 (unsigned short, signed int, unsigned int, signed char);
unsigned char (*v2) (unsigned short, signed int, unsigned int, signed char) = v1;
unsigned int v3 (double, unsigned int, signed char, double);
unsigned int (*v4) (double, unsigned int, signed char, double) = v3;
unsigned char v5 (signed char, unsigned short, signed int);
unsigned char (*v6) (signed char, unsigned short, signed int) = v5;
signed int v7 (unsigned char, double);
signed int (*v8) (unsigned char, double) = v7;
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (unsigned char v17, double v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
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

unsigned char v5 (signed char v19, unsigned short v20, signed int v21) {
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
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (double v22, unsigned int v23, signed char v24, double v25) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
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

unsigned char v1 (unsigned short v26, signed int v27, unsigned int v28, signed char v29) {
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
for (;;) {
trace++;
switch (trace) {
case 0: return 'A';
default: abort ();
}
}
}
