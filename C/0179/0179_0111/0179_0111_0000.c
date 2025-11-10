#include <stdio.h>
#include <stdlib.h>
signed short v1 (unsigned int, signed short, float);
signed short (*v2) (unsigned int, signed short, float) = v1;
extern unsigned int v3 (signed short, unsigned char, unsigned short, float);
extern unsigned int (*v4) (signed short, unsigned char, unsigned short, float);
double v5 (unsigned int);
double (*v6) (unsigned int) = v5;
signed int v7 (signed char, unsigned short, signed int, float);
signed int (*v8) (signed char, unsigned short, signed int, float) = v7;
double v9 (unsigned int, signed char, signed int);
double (*v10) (unsigned int, signed char, signed int) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (unsigned int v11, signed char v12, signed int v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
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

signed int v7 (signed char v14, unsigned short v15, signed int v16, float v17) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
case 13: return -199999;
case 12: return -199999;
case 11: return -199999;
case 10: 
{
signed char v18;
unsigned short v19;
signed int v20;
float v21;
signed int v22;
v18='a';
v19=111;
v20=-199999;
v21=1.234;
v22 = v7 (v18, v19, v20, v21);
history[history_index++] = (int)v22;
return -199999;
}
break;
case 9: 
{
signed char v23;
unsigned short v24;
signed int v25;
float v26;
signed int v27;
v23='a';
v24=111;
v25=-199999;
v26=1.234;
v27 = (*v8) (v23, v24, v25, v26);
history[history_index++] = (int)v27;
return -199999;
}
break;
case 8: return -199999;
case 7: 
{
signed char v28;
unsigned short v29;
signed int v30;
float v31;
signed int v32;
v28='a';
v29=111;
v30=-199999;
v31=1.234;
v32 = v7 (v28, v29, v30, v31);
history[history_index++] = (int)v32;
return -199999;
}
break;
case 6: return -199999;
case 5: return -199999;
case 4: 
{
signed char v33;
unsigned short v34;
signed int v35;
float v36;
signed int v37;
v33='a';
v34=111;
v35=-199999;
v36=1.234;
v37 = v7 (v33, v34, v35, v36);
history[history_index++] = (int)v37;
return -199999;
}
break;
case 3: 
{
signed char v38;
unsigned short v39;
signed int v40;
float v41;
signed int v42;
v38='a';
v39=111;
v40=-199999;
v41=1.234;
v42 = v7 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
return -199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v5 (unsigned int v43) {
history[history_index++] = (int)v43;
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

signed short v1 (unsigned int v44, signed short v45, float v46) {
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
for (;;) {
trace++;
switch (trace) {
case 14: return -111;
case 2: 
{
signed char v47;
unsigned short v48;
signed int v49;
float v50;
signed int v51;
v47='a';
v48=111;
v49=-199999;
v50=1.234;
v51 = (*v8) (v47, v48, v49, v50);
history[history_index++] = (int)v51;
return -111;
}
break;
case 0: 
{
signed short v52;
unsigned char v53;
unsigned short v54;
float v55;
unsigned int v56;
v52=-111;
v53='A';
v54=111;
v55=1.234;
v56 = (*v4) (v52, v53, v54, v55);
history[history_index++] = (int)v56;
return -111;
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
unsigned int v57;
signed short v58;
float v59;
signed short v60;
v57=199999;
v58=-111;
v59=1.234;
v60 = (*v2) (v57, v58, v59);
history[history_index++] = (int)v60;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
