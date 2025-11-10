#include <stdlib.h>
double v1 (unsigned short, unsigned short);
double (*v2) (unsigned short, unsigned short) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
extern double v7 (void);
extern double (*v8) (void);
extern double v9 (unsigned char, double, unsigned char);
extern double (*v10) (unsigned char, double, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned char v5 (signed short v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 1: return 'A';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (unsigned short v15, unsigned short v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 4: return 111111.2222222;
case 2: 
{
unsigned char v17;
double v18;
unsigned char v19;
double v20;
v17='A';
v18=111111.2222222;
v19='A';
v20 = v9 (v17, v18, v19);
history[history_index++] = (int)v20;
return 111111.2222222;
}
break;
case 0: 
{
signed short v21;
unsigned char v22;
v21=-111;
v22 = (*v6) (v21);
history[history_index++] = (int)v22;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
