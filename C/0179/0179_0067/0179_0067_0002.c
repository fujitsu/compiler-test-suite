#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed char v3 (unsigned int, float);
signed char (*v4) (unsigned int, float) = v3;
extern unsigned char v5 (unsigned char, double);
extern unsigned char (*v6) (unsigned char, double);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern void v9 (signed int, double, unsigned char);
extern void (*v10) (signed int, double, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (void) {
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
case 10: return 111;
case 9: 
{
unsigned short v18;
v18 = (*v8) ();
history[history_index++] = (int)v18;
return 111;
}
break;
case 8: return 111;
case 7: return 111;
case 6: 
{
unsigned short v19;
v19 = (*v8) ();
history[history_index++] = (int)v19;
return 111;
}
break;
case 5: 
{
unsigned short v20;
v20 = (*v8) ();
history[history_index++] = (int)v20;
return 111;
}
break;
case 4: return 111;
case 3: 
{
unsigned short v21;
v21 = (*v8) ();
history[history_index++] = (int)v21;
return 111;
}
break;
case 1: 
{
unsigned int v22;
float v23;
signed char v24;
v22=199999;
v23=1.234;
v24 = (*v4) (v22, v23);
history[history_index++] = (int)v24;
return 111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v3 (unsigned int v25, float v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 2: return 'a';
default: abort ();
}
}
}
