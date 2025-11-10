#include <stdio.h>
#include <stdlib.h>
double v1 (double, signed short, unsigned char);
double (*v2) (double, signed short, unsigned char) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed int v5 (signed short, unsigned int);
signed int (*v6) (signed short, unsigned int) = v5;
extern signed char v7 (signed int, signed short, float);
extern signed char (*v8) (signed int, signed short, float);
extern signed short v9 (unsigned int, signed int);
extern signed short (*v10) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (signed short v11, unsigned int v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 10: return -199999;
case 2: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v1 (double v13, signed short v14, unsigned char v15) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 11: return 111111.2222222;
case 9: 
{
signed short v16;
unsigned int v17;
signed int v18;
v16=-111;
v17=199999;
v18 = v5 (v16, v17);
history[history_index++] = (int)v18;
return 111111.2222222;
}
break;
case 7: 
{
unsigned int v19;
signed int v20;
signed short v21;
v19=199999;
v20=-199999;
v21 = (*v10) (v19, v20);
history[history_index++] = (int)v21;
return 111111.2222222;
}
break;
case 5: 
{
unsigned int v22;
signed int v23;
signed short v24;
v22=199999;
v23=-199999;
v24 = v9 (v22, v23);
history[history_index++] = (int)v24;
return 111111.2222222;
}
break;
case 3: 
{
unsigned int v25;
signed int v26;
signed short v27;
v25=199999;
v26=-199999;
v27 = (*v10) (v25, v26);
history[history_index++] = (int)v27;
return 111111.2222222;
}
break;
case 1: 
{
signed short v28;
unsigned int v29;
signed int v30;
v28=-111;
v29=199999;
v30 = (*v6) (v28, v29);
history[history_index++] = (int)v30;
return 111111.2222222;
}
break;
case 0: 
{
double v31;
signed short v32;
unsigned char v33;
double v34;
v31=111111.2222222;
v32=-111;
v33='A';
v34 = (*v2) (v31, v32, v33);
history[history_index++] = (int)v34;
return 111111.2222222;
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
double v35;
signed short v36;
unsigned char v37;
double v38;
v35=111111.2222222;
v36=-111;
v37='A';
v38 = (*v2) (v35, v36, v37);
history[history_index++] = (int)v38;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
