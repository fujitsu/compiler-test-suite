#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (signed short, signed int);
extern signed int (*v4) (signed short, signed int);
double v5 (signed int, signed short, unsigned short);
double (*v6) (signed int, signed short, unsigned short) = v5;
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed int v16, signed short v17, unsigned short v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 13: return 111111.2222222;
case 9: 
{
signed int v19;
v19 = (*v10) ();
history[history_index++] = (int)v19;
return 111111.2222222;
}
break;
case 5: return 111111.2222222;
case 1: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return;
case 8: 
{
signed int v20;
signed short v21;
unsigned short v22;
double v23;
v20=-199999;
v21=-111;
v22=111;
v23 = (*v6) (v20, v21, v22);
history[history_index++] = (int)v23;
return;
}
break;
case 6: 
{
signed short v24;
signed int v25;
signed int v26;
v24=-111;
v25=-199999;
v26 = (*v4) (v24, v25);
history[history_index++] = (int)v26;
return;
}
break;
case 4: 
{
signed int v27;
signed short v28;
unsigned short v29;
double v30;
v27=-199999;
v28=-111;
v29=111;
v30 = (*v6) (v27, v28, v29);
history[history_index++] = (int)v30;
return;
}
break;
case 2: 
{
signed short v31;
signed int v32;
signed int v33;
v31=-111;
v32=-199999;
v33 = (*v4) (v31, v32);
history[history_index++] = (int)v33;
return;
}
break;
case 0: 
{
signed int v34;
signed short v35;
unsigned short v36;
double v37;
v34=-199999;
v35=-111;
v36=111;
v37 = (*v6) (v34, v35, v36);
history[history_index++] = (int)v37;
return;
}
break;
default: abort ();
}
}
}
