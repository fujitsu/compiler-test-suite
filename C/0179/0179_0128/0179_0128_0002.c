#include <stdlib.h>
void v1 (signed int);
void (*v2) (signed int) = v1;
extern float v3 (void);
extern float (*v4) (void);
extern float v5 (double, signed int);
extern float (*v6) (double, signed int);
extern float v7 (void);
extern float (*v8) (void);
extern float v9 (double);
extern float (*v10) (double);
extern int history[];
extern int history_index;
extern int trace;

void v1 (signed int v16) {
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 12: return;
case 11: return;
case 10: 
{
signed int v17;
v17=-199999;
(*v2) (v17);
return;
}
break;
case 8: 
{
double v18;
float v19;
v18=111111.2222222;
v19 = v9 (v18);
history[history_index++] = (int)v19;
return;
}
break;
case 7: return;
case 5: 
{
float v20;
v20 = v3 ();
history[history_index++] = (int)v20;
return;
}
break;
case 4: 
{
signed int v21;
v21=-199999;
(*v2) (v21);
return;
}
break;
case 0: 
{
float v22;
v22 = (*v4) ();
history[history_index++] = (int)v22;
return;
}
break;
default: abort ();
}
}
}
