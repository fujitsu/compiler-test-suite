#include <stdio.h>
#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern unsigned int v3 (double, unsigned int);
extern unsigned int (*v4) (double, unsigned int);
unsigned short v5 (unsigned short, unsigned short, signed char);
unsigned short (*v6) (unsigned short, unsigned short, signed char) = v5;
signed char v7 (signed int, unsigned char);
signed char (*v8) (signed int, unsigned char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed char v7 (signed int v11, unsigned char v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 15: return 'a';
case 13: return 'a';
case 12: return 'a';
case 11: return 'a';
case 10: 
{
signed int v13;
unsigned char v14;
signed char v15;
v13=-199999;
v14='A';
v15 = (*v8) (v13, v14);
history[history_index++] = (int)v15;
return 'a';
}
break;
case 9: 
{
signed int v16;
unsigned char v17;
signed char v18;
v16=-199999;
v17='A';
v18 = v7 (v16, v17);
history[history_index++] = (int)v18;
return 'a';
}
break;
case 7: 
{
unsigned char v19;
v19 = v1 ();
history[history_index++] = (int)v19;
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

unsigned short v5 (unsigned short v20, unsigned short v21, signed char v22) {
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
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

unsigned char v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 20: return 'A';
case 18: return 'A';
case 16: return 'A';
case 14: return 'A';
case 8: 
{
signed int v23;
unsigned char v24;
signed char v25;
v23=-199999;
v24='A';
v25 = v7 (v23, v24);
history[history_index++] = (int)v25;
return 'A';
}
break;
case 6: 
{
signed int v26;
unsigned char v27;
signed char v28;
v26=-199999;
v27='A';
v28 = (*v8) (v26, v27);
history[history_index++] = (int)v28;
return 'A';
}
break;
case 4: 
{
signed int v29;
v29 = (*v10) ();
history[history_index++] = (int)v29;
return 'A';
}
break;
case 2: 
{
signed int v30;
v30 = (*v10) ();
history[history_index++] = (int)v30;
return 'A';
}
break;
case 0: 
{
double v31;
unsigned int v32;
unsigned int v33;
v31=111111.2222222;
v32=199999;
v33 = v3 (v31, v32);
history[history_index++] = (int)v33;
return 'A';
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
unsigned char v34;
v34 = (*v2) ();
history[history_index++] = (int)v34;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
