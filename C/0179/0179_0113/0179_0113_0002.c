#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern double v3 (unsigned short, unsigned char, signed short);
extern double (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (double);
extern signed short (*v6) (double);
void v7 (signed int, signed char);
void (*v8) (signed int, signed char) = v7;
extern unsigned short v9 (signed char, signed int);
extern unsigned short (*v10) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;

void v7 (signed int v19, signed char v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
