#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
float v3 (void);
float (*v4) (void) = v3;
double v5 (float, unsigned int);
double (*v6) (float, unsigned int) = v5;
extern unsigned short v7 (float, unsigned char);
extern unsigned short (*v8) (float, unsigned char);
void v9 (unsigned int, float, unsigned short, float);
void (*v10) (unsigned int, float, unsigned short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned int v14, float v15, unsigned short v16, float v17) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
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

double v5 (float v18, unsigned int v19) {
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 15: return 111111.2222222;
case 14: return 111111.2222222;
case 13: return 111111.2222222;
case 12: return 111111.2222222;
case 11: return 111111.2222222;
case 10: 
{
float v20;
unsigned int v21;
double v22;
v20=1.234;
v21=199999;
v22 = v5 (v20, v21);
history[history_index++] = (int)v22;
return 111111.2222222;
}
break;
case 8: 
{
float v23;
v23 = v3 ();
history[history_index++] = (int)v23;
return 111111.2222222;
}
break;
case 7: 
{
float v24;
unsigned int v25;
double v26;
v24=1.234;
v25=199999;
v26 = (*v6) (v24, v25);
history[history_index++] = (int)v26;
return 111111.2222222;
}
break;
case 6: 
{
float v27;
unsigned int v28;
double v29;
v27=1.234;
v28=199999;
v29 = (*v6) (v27, v28);
history[history_index++] = (int)v29;
return 111111.2222222;
}
break;
case 5: 
{
float v30;
unsigned int v31;
double v32;
v30=1.234;
v31=199999;
v32 = v5 (v30, v31);
history[history_index++] = (int)v32;
return 111111.2222222;
}
break;
case 4: return 111111.2222222;
case 3: 
{
float v33;
unsigned int v34;
double v35;
v33=1.234;
v34=199999;
v35 = (*v6) (v33, v34);
history[history_index++] = (int)v35;
return 111111.2222222;
}
break;
case 1: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 9: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 2: 
{
float v36;
unsigned int v37;
double v38;
v36=1.234;
v37=199999;
v38 = (*v6) (v36, v37);
history[history_index++] = (int)v38;
return 111;
}
break;
case 0: 
{
float v39;
unsigned int v40;
double v41;
v39=1.234;
v40=199999;
v41 = (*v6) (v39, v40);
history[history_index++] = (int)v41;
return 111;
}
break;
default: abort ();
}
}
}
