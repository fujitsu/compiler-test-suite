#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
double v3 (void);
double (*v4) (void) = v3;
extern float v5 (unsigned int, double);
extern float (*v6) (unsigned int, double);
signed short v7 (unsigned char, unsigned int);
signed short (*v8) (unsigned char, unsigned int) = v7;
float v9 (signed short, signed int);
float (*v10) (signed short, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (signed short v20, signed int v21) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 13: return 1.234;
case 1: 
{
unsigned int v22;
double v23;
float v24;
v22=199999;
v23=111111.2222222;
v24 = (*v6) (v22, v23);
history[history_index++] = (int)v24;
return 1.234;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v7 (unsigned char v25, unsigned int v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 11: return -111;
case 9: return -111;
case 7: 
{
double v27;
v27 = (*v4) ();
history[history_index++] = (int)v27;
return -111;
}
break;
case 5: 
{
unsigned int v28;
double v29;
float v30;
v28=199999;
v29=111111.2222222;
v30 = v5 (v28, v29);
history[history_index++] = (int)v30;
return -111;
}
break;
case 3: 
{
double v31;
v31 = v3 ();
history[history_index++] = (int)v31;
return -111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 8: return 111111.2222222;
case 4: return 111111.2222222;
default: abort ();
}
}
}
