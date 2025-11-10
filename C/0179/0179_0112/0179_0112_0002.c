#include <stdlib.h>
extern double v1 (double, signed short, unsigned char);
extern double (*v2) (double, signed short, unsigned char);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed int v5 (signed short, unsigned int);
extern signed int (*v6) (signed short, unsigned int);
extern signed char v7 (signed int, signed short, float);
extern signed char (*v8) (signed int, signed short, float);
extern signed short v9 (unsigned int, signed int);
extern signed short (*v10) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
