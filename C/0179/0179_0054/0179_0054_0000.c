#include <stdio.h>
#include <stdlib.h>
extern float v1 (signed short, signed char);
extern float (*v2) (signed short, signed char);
signed char v3 (unsigned short, signed short, unsigned char);
signed char (*v4) (unsigned short, signed short, unsigned char) = v3;
unsigned short v5 (signed char, unsigned short);
unsigned short (*v6) (signed char, unsigned short) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed int v9 (void) {
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

unsigned short v5 (signed char v11, unsigned short v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 13: return 111;
case 9: 
{
unsigned short v13;
signed short v14;
unsigned char v15;
signed char v16;
v13=111;
v14=-111;
v15='A';
v16 = v3 (v13, v14, v15);
history[history_index++] = (int)v16;
return 111;
}
break;
case 4: return 111;
case 2: 
{
unsigned short v17;
signed short v18;
unsigned char v19;
signed char v20;
v17=111;
v18=-111;
v19='A';
v20 = v3 (v17, v18, v19);
history[history_index++] = (int)v20;
return 111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v3 (unsigned short v21, signed short v22, unsigned char v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 17: return 'a';
case 15: return 'a';
case 14: return 'a';
case 12: return 'a';
case 11: return 'a';
case 10: 
{
unsigned short v24;
signed short v25;
unsigned char v26;
signed char v27;
v24=111;
v25=-111;
v26='A';
v27 = (*v4) (v24, v25, v26);
history[history_index++] = (int)v27;
return 'a';
}
break;
case 8: 
{
signed char v28;
unsigned short v29;
unsigned short v30;
v28='a';
v29=111;
v30 = v5 (v28, v29);
history[history_index++] = (int)v30;
return 'a';
}
break;
case 7: return 'a';
case 6: 
{
unsigned short v31;
signed short v32;
unsigned char v33;
signed char v34;
v31=111;
v32=-111;
v33='A';
v34 = (*v4) (v31, v32, v33);
history[history_index++] = (int)v34;
return 'a';
}
break;
case 5: 
{
unsigned short v35;
signed short v36;
unsigned char v37;
signed char v38;
v35=111;
v36=-111;
v37='A';
v38 = (*v4) (v35, v36, v37);
history[history_index++] = (int)v38;
return 'a';
}
break;
case 3: 
{
signed char v39;
unsigned short v40;
unsigned short v41;
v39='a';
v40=111;
v41 = (*v6) (v39, v40);
history[history_index++] = (int)v41;
return 'a';
}
break;
case 1: 
{
signed char v42;
unsigned short v43;
unsigned short v44;
v42='a';
v43=111;
v44 = v5 (v42, v43);
history[history_index++] = (int)v44;
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
signed short v45;
signed char v46;
float v47;
v45=-111;
v46='a';
v47 = (*v2) (v45, v46);
history[history_index++] = (int)v47;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
