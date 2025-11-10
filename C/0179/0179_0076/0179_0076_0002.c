#include <stdlib.h>
extern unsigned short v1 (signed int, signed int, unsigned short, signed int);
extern unsigned short (*v2) (signed int, signed int, unsigned short, signed int);
unsigned short v3 (float, unsigned char, unsigned short, signed char);
unsigned short (*v4) (float, unsigned char, unsigned short, signed char) = v3;
extern signed int v5 (double, double, unsigned int, unsigned short);
extern signed int (*v6) (double, double, unsigned int, unsigned short);
extern double v7 (float);
extern double (*v8) (float);
extern double v9 (unsigned char);
extern double (*v10) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (float v33, unsigned char v34, unsigned short v35, signed char v36) {
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
