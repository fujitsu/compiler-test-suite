#include <stdlib.h>
extern double v1 (signed int, unsigned short, signed int);
extern double (*v2) (signed int, unsigned short, signed int);
unsigned int v3 (signed int, unsigned char, signed char);
unsigned int (*v4) (signed int, unsigned char, signed char) = v3;
extern double v5 (unsigned char, unsigned int);
extern double (*v6) (unsigned char, unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern double v9 (signed int);
extern double (*v10) (signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (signed int v20, unsigned char v21, signed char v22) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
