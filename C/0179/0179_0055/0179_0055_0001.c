#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
extern signed short v3 (signed int, unsigned int, unsigned short, signed int);
extern signed short (*v4) (signed int, unsigned int, unsigned short, signed int);
unsigned int v5 (unsigned short, signed short, signed char);
unsigned int (*v6) (unsigned short, signed short, signed char) = v5;
signed int v7 (signed short);
signed int (*v8) (signed short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed int v7 (signed short v14) {
history[history_index++] = (int)v14;
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

unsigned int v5 (unsigned short v15, signed short v16, signed char v17) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
