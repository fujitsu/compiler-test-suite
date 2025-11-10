#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned char, double, double, unsigned short);
extern void (*v4) (unsigned char, double, double, unsigned short);
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
unsigned short v7 (unsigned int, unsigned int, signed int);
unsigned short (*v8) (unsigned int, unsigned int, signed int) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (unsigned int v11, unsigned int v12, signed int v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 10: return 111;
case 8: 
{
unsigned int v14;
v14 = (*v10) ();
history[history_index++] = (int)v14;
return 111;
}
break;
case 5: return 111;
case 3: 
{
unsigned char v15;
double v16;
double v17;
unsigned short v18;
v15='A';
v16=111111.2222222;
v17=111111.2222222;
v18=111;
v3 (v15, v16, v17, v18);
return 111;
}
break;
case 1: 
{
unsigned char v19;
double v20;
double v21;
unsigned short v22;
v19='A';
v20=111111.2222222;
v21=111111.2222222;
v22=111;
(*v4) (v19, v20, v21, v22);
return 111;
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
unsigned int v23;
v23 = (*v2) ();
history[history_index++] = (int)v23;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
