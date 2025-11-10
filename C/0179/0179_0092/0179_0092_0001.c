#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
unsigned int v3 (signed char);
unsigned int (*v4) (signed char) = v3;
extern double v5 (signed short, signed char);
extern double (*v6) (signed short, signed char);
extern unsigned short v7 (double, unsigned char);
extern unsigned short (*v8) (double, unsigned char);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 3: return 199999;
case 1: 
{
signed short v14;
signed char v15;
double v16;
v14=-111;
v15='a';
v16 = (*v6) (v14, v15);
history[history_index++] = (int)v16;
return 199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (signed char v17) {
history[history_index++] = (int)v17;
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

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 4: return -199999;
case 0: 
{
unsigned int v18;
v18 = v9 ();
history[history_index++] = (int)v18;
return -199999;
}
break;
default: abort ();
}
}
}
