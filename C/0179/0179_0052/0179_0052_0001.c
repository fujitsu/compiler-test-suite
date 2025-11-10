#include <stdlib.h>
extern unsigned char v1 (signed int, double);
extern unsigned char (*v2) (signed int, double);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed int v7 (void);
signed int (*v8) (void) = v7;
unsigned int v9 (signed short, unsigned short, unsigned short, signed int);
unsigned int (*v10) (signed short, unsigned short, unsigned short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (signed short v45, unsigned short v46, unsigned short v47, signed int v48) {
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
for (;;) {
trace++;
switch (trace) {
case 9: return 199999;
case 5: return 199999;
case 3: return 199999;
case 1: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (void) {
for (;;) {
trace++;
switch (trace) {
case 11: return -199999;
default: abort ();
}
}
}
