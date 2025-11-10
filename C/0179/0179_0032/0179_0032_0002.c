#include <stdlib.h>
extern double v1 (unsigned short, unsigned short);
extern double (*v2) (unsigned short, unsigned short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
double v7 (void);
double (*v8) (void) = v7;
double v9 (unsigned char, double, unsigned char);
double (*v10) (unsigned char, double, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (unsigned char v23, double v24, unsigned char v25) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
case 3: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v7 (void) {
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

unsigned short v3 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
