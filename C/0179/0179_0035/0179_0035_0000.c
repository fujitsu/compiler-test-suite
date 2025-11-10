#include <stdio.h>
#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern double v3 (signed short, signed short);
extern double (*v4) (signed short, signed short);
unsigned short v5 (signed char);
unsigned short (*v6) (signed char) = v5;
extern signed char v7 (float, float, unsigned char);
extern signed char (*v8) (float, float, unsigned char);
void v9 (unsigned short, unsigned char);
void (*v10) (unsigned short, unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned short v11, unsigned char v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 11: return;
case 8: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v5 (signed char v13) {
history[history_index++] = (int)v13;
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

signed char v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return 'a';
case 12: return 'a';
case 10: 
{
unsigned short v14;
unsigned char v15;
v14=111;
v15='A';
(*v10) (v14, v15);
return 'a';
}
break;
case 6: 
{
float v16;
float v17;
unsigned char v18;
signed char v19;
v16=1.234;
v17=1.234;
v18='A';
v19 = v7 (v16, v17, v18);
history[history_index++] = (int)v19;
return 'a';
}
break;
case 4: 
{
float v20;
float v21;
unsigned char v22;
signed char v23;
v20=1.234;
v21=1.234;
v22='A';
v23 = (*v8) (v20, v21, v22);
history[history_index++] = (int)v23;
return 'a';
}
break;
case 0: 
{
signed short v24;
signed short v25;
double v26;
v24=-111;
v25=-111;
v26 = v3 (v24, v25);
history[history_index++] = (int)v26;
return 'a';
}
break;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v27;
v27 = v1 ();
history[history_index++] = (int)v27;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
