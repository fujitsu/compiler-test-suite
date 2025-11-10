#include <stdlib.h>
double v1 (signed int, float, unsigned char, signed char);
double (*v2) (signed int, float, unsigned char, signed char) = v1;
extern double v3 (void);
extern double (*v4) (void);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern float v9 (signed short, unsigned char, signed int, unsigned char);
extern float (*v10) (signed short, unsigned char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

void v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 11: return;
case 9: 
{
double v20;
v20 = (*v4) ();
history[history_index++] = (int)v20;
return;
}
break;
case 7: return;
case 5: 
{
signed int v21;
float v22;
unsigned char v23;
signed char v24;
double v25;
v21=-199999;
v22=1.234;
v23='A';
v24='a';
v25 = v1 (v21, v22, v23, v24);
history[history_index++] = (int)v25;
return;
}
break;
case 3: 
{
unsigned int v26;
v26 = (*v8) ();
history[history_index++] = (int)v26;
return;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (signed int v27, float v28, unsigned char v29, signed char v30) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 8: return 111111.2222222;
case 6: 
{
(*v6) ();
return 111111.2222222;
}
break;
case 2: 
{
(*v6) ();
return 111111.2222222;
}
break;
case 0: 
{
unsigned int v31;
v31 = (*v8) ();
history[history_index++] = (int)v31;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
