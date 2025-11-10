#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
extern double v3 (unsigned int, signed short);
extern double (*v4) (unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern double v7 (unsigned short, unsigned int, signed char);
extern double (*v8) (unsigned short, unsigned int, signed char);
unsigned char v9 (signed int);
unsigned char (*v10) (signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (signed int v20) {
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
