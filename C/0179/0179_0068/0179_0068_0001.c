#include <stdlib.h>
unsigned short v1 (unsigned char, signed int);
unsigned short (*v2) (unsigned char, signed int) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
signed int v5 (unsigned int, unsigned short);
signed int (*v6) (unsigned int, unsigned short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (float, double);
extern void (*v10) (float, double);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (unsigned int v15, unsigned short v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
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

unsigned short v1 (unsigned char v17, signed int v18) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 0: return 111;
default: abort ();
}
}
}
