#include <stdio.h>
#include <stdlib.h>
unsigned char v1 (signed int, double);
unsigned char (*v2) (signed int, double) = v1;
signed short v3 (unsigned char, unsigned short);
signed short (*v4) (unsigned char, unsigned short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed short, unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (unsigned char v11, unsigned short v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 13: return -111;
case 7: 
{
signed int v13;
double v14;
unsigned char v15;
v13=-199999;
v14=111111.2222222;
v15 = (*v2) (v13, v14);
history[history_index++] = (int)v15;
return -111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v1 (signed int v16, double v17) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
case 14: return 'A';
case 12: return 'A';
case 10: 
{
signed int v18;
v18 = (*v8) ();
history[history_index++] = (int)v18;
return 'A';
}
break;
case 8: 
{
signed short v19;
unsigned short v20;
unsigned short v21;
signed int v22;
unsigned int v23;
v19=-111;
v20=111;
v21=111;
v22=-199999;
v23 = v9 (v19, v20, v21, v22);
history[history_index++] = (int)v23;
return 'A';
}
break;
case 6: 
{
unsigned char v24;
unsigned short v25;
signed short v26;
v24='A';
v25=111;
v26 = (*v4) (v24, v25);
history[history_index++] = (int)v26;
return 'A';
}
break;
case 4: 
{
signed short v27;
unsigned short v28;
unsigned short v29;
signed int v30;
unsigned int v31;
v27=-111;
v28=111;
v29=111;
v30=-199999;
v31 = (*v10) (v27, v28, v29, v30);
history[history_index++] = (int)v31;
return 'A';
}
break;
case 2: 
{
signed short v32;
unsigned short v33;
unsigned short v34;
signed int v35;
unsigned int v36;
v32=-111;
v33=111;
v34=111;
v35=-199999;
v36 = (*v10) (v32, v33, v34, v35);
history[history_index++] = (int)v36;
return 'A';
}
break;
case 0: 
{
signed short v37;
unsigned short v38;
unsigned short v39;
signed int v40;
unsigned int v41;
v37=-111;
v38=111;
v39=111;
v40=-199999;
v41 = (*v10) (v37, v38, v39, v40);
history[history_index++] = (int)v41;
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
signed int v42;
double v43;
unsigned char v44;
v42=-199999;
v43=111111.2222222;
v44 = v1 (v42, v43);
history[history_index++] = (int)v44;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
