#include <stdlib.h>
void v1 (unsigned short, float, unsigned short, unsigned char);
void (*v2) (unsigned short, float, unsigned short, unsigned char) = v1;
extern float v3 (void);
extern float (*v4) (void);
signed int v5 (void);
signed int (*v6) (void) = v5;
double v7 (signed char, signed int, signed int, float);
double (*v8) (signed char, signed int, signed int, float) = v7;
extern unsigned int v9 (unsigned char, float);
extern unsigned int (*v10) (unsigned char, float);
extern int history[];
extern int history_index;
extern int trace;

double v7 (signed char v15, signed int v16, signed int v17, float v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 11: return 111111.2222222;
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
case 9: return -199999;
case 3: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v1 (unsigned short v19, float v20, unsigned short v21, unsigned char v22) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 14: return;
case 12: return;
case 10: 
{
signed char v23;
signed int v24;
signed int v25;
float v26;
double v27;
v23='a';
v24=-199999;
v25=-199999;
v26=1.234;
v27 = (*v8) (v23, v24, v25, v26);
history[history_index++] = (int)v27;
return;
}
break;
case 8: 
{
signed int v28;
v28 = (*v6) ();
history[history_index++] = (int)v28;
return;
}
break;
case 6: 
{
unsigned char v29;
float v30;
unsigned int v31;
v29='A';
v30=1.234;
v31 = v9 (v29, v30);
history[history_index++] = (int)v31;
return;
}
break;
case 4: 
{
unsigned char v32;
float v33;
unsigned int v34;
v32='A';
v33=1.234;
v34 = (*v10) (v32, v33);
history[history_index++] = (int)v34;
return;
}
break;
case 2: 
{
signed int v35;
v35 = (*v6) ();
history[history_index++] = (int)v35;
return;
}
break;
case 0: 
{
float v36;
v36 = (*v4) ();
history[history_index++] = (int)v36;
return;
}
break;
default: abort ();
}
}
}
