#include <stdlib.h>
extern double v1 (signed int, unsigned short, signed int);
extern double (*v2) (signed int, unsigned short, signed int);
extern unsigned int v3 (signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, unsigned char, signed char);
extern double v5 (unsigned char, unsigned int);
extern double (*v6) (unsigned char, unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
double v9 (signed int);
double (*v10) (signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (signed int v23) {
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
