#include <stdio.h>
#include <stdlib.h>
unsigned char v1 (signed char);
unsigned char (*v2) (signed char) = v1;
float v3 (unsigned int);
float (*v4) (unsigned int) = v3;
extern unsigned int v5 (unsigned int, signed int, double);
extern unsigned int (*v6) (unsigned int, signed int, double);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern float v9 (unsigned int);
extern float (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

float v3 (unsigned int v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 11: return 1.234;
case 9: return 1.234;
case 7: 
{
unsigned int v12;
float v13;
v12=199999;
v13 = (*v10) (v12);
history[history_index++] = (int)v13;
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

unsigned char v1 (signed char v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 18: return 'A';
case 13: return 'A';
case 12: return 'A';
case 10: 
{
unsigned int v15;
float v16;
v15=199999;
v16 = (*v4) (v15);
history[history_index++] = (int)v16;
return 'A';
}
break;
case 6: 
{
unsigned int v17;
float v18;
v17=199999;
v18 = v3 (v17);
history[history_index++] = (int)v18;
return 'A';
}
break;
case 5: 
{
signed char v19;
unsigned char v20;
v19='a';
v20 = (*v2) (v19);
history[history_index++] = (int)v20;
return 'A';
}
break;
case 0: 
{
signed char v21;
v21 = (*v8) ();
history[history_index++] = (int)v21;
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
signed char v22;
unsigned char v23;
v22='a';
v23 = (*v2) (v22);
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
