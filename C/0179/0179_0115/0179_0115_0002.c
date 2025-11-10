#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern void v3 (unsigned char, double, double, unsigned short);
extern void (*v4) (unsigned char, double, double, unsigned short);
float v5 (unsigned short);
float (*v6) (unsigned short) = v5;
extern unsigned short v7 (unsigned int, unsigned int, signed int);
extern unsigned short (*v8) (unsigned int, unsigned int, signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

float v5 (unsigned short v28) {
history[history_index++] = (int)v28;
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

unsigned int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 199999;
case 11: return 199999;
case 7: 
{
unsigned int v29;
unsigned int v30;
signed int v31;
unsigned short v32;
v29=199999;
v30=199999;
v31=-199999;
v32 = v7 (v29, v30, v31);
history[history_index++] = (int)v32;
return 199999;
}
break;
case 6: 
{
unsigned int v33;
v33 = (*v2) ();
history[history_index++] = (int)v33;
return 199999;
}
break;
case 0: 
{
unsigned int v34;
unsigned int v35;
signed int v36;
unsigned short v37;
v34=199999;
v35=199999;
v36=-199999;
v37 = v7 (v34, v35, v36);
history[history_index++] = (int)v37;
return 199999;
}
break;
default: abort ();
}
}
}
