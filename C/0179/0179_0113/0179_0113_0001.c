#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern double v3 (unsigned short, unsigned char, signed short);
extern double (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (double);
extern signed short (*v6) (double);
extern void v7 (signed int, signed char);
extern void (*v8) (signed int, signed char);
unsigned short v9 (signed char, signed int);
unsigned short (*v10) (signed char, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (signed char v17, signed int v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
