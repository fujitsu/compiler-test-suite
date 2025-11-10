#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern float v3 (unsigned int);
extern float (*v4) (unsigned int);
unsigned int v5 (unsigned int, signed int, double);
unsigned int (*v6) (unsigned int, signed int, double) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern float v9 (unsigned int);
extern float (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (void) {
for (;;) {
trace++;
switch (trace) {
case 17: return 'a';
case 16: return 'a';
case 15: return 'a';
case 3: 
{
unsigned int v25;
signed int v26;
double v27;
unsigned int v28;
v25=199999;
v26=-199999;
v27=111111.2222222;
v28 = (*v6) (v25, v26, v27);
history[history_index++] = (int)v28;
return 'a';
}
break;
case 2: 
{
signed char v29;
v29 = v7 ();
history[history_index++] = (int)v29;
return 'a';
}
break;
case 1: 
{
signed char v30;
v30 = (*v8) ();
history[history_index++] = (int)v30;
return 'a';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v5 (unsigned int v31, signed int v32, double v33) {
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
for (;;) {
trace++;
switch (trace) {
case 14: return 199999;
case 4: 
{
signed char v34;
unsigned char v35;
v34='a';
v35 = v1 (v34);
history[history_index++] = (int)v35;
return 199999;
}
break;
default: abort ();
}
}
}
