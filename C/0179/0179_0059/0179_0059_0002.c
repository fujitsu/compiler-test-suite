#include <stdlib.h>
extern signed int v1 (signed int, unsigned char, double);
extern signed int (*v2) (signed int, unsigned char, double);
extern void v3 (unsigned short, signed short, float);
extern void (*v4) (unsigned short, signed short, float);
signed int v5 (void);
signed int (*v6) (void) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned char v9 (unsigned char, signed char, double);
extern unsigned char (*v10) (unsigned char, signed char, double);
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (void) {
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

signed int v5 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
