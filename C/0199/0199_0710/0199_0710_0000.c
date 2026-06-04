#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
signed char v3 (unsigned int, signed int, unsigned char, signed short);
signed char (*v4) (unsigned int, signed int, unsigned char, signed short) = v3;
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
signed char v7 (signed int, unsigned short, unsigned int);
signed char (*v8) (signed int, unsigned short, unsigned int) = v7;
unsigned short v9 (unsigned short, unsigned int);
unsigned short (*v10) (unsigned short, unsigned int) = v9;
extern void v11 (void);
extern void (*v12) (void);
signed short v13 (unsigned int, unsigned short);
signed short (*v14) (unsigned int, unsigned short) = v13;
signed short v15 (unsigned short, signed short, signed short, unsigned short);
signed short (*v16) (unsigned short, signed short, signed short, unsigned short) = v15;
extern signed short v17 (signed short, signed char);
extern signed short (*v18) (signed short, signed char);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (signed short, unsigned char, signed short, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, signed short, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (unsigned short, unsigned short, signed short);
extern signed short (*v26) (unsigned short, unsigned short, signed short);
signed short v27 (unsigned char, unsigned int);
signed short (*v28) (unsigned char, unsigned int) = v27;
extern unsigned char v29 (signed short, unsigned char);
extern unsigned char (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed char v32 = -1;
unsigned short v31 = 1;

signed short v27 (unsigned char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 3;
unsigned short v37 = 6;
signed short v36 = 3;
trace++;
switch (trace)
{
case 9: 
{
signed short v39;
unsigned char v40;
unsigned char v41;
v39 = v36 + v36;
v40 = v34 + 5;
v41 = v29 (v39, v40);
history[history_index++] = (int)v41;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v15 (unsigned short v42, signed short v43, signed short v44, unsigned short v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 7;
unsigned short v47 = 4;
signed short v46 = 3;
trace++;
switch (trace)
{
case 3: 
return v43;
default: abort ();
}
}
}
}

signed short v13 (unsigned int v49, unsigned short v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 4;
unsigned int v52 = 6U;
signed int v51 = -2;
trace++;
switch (trace)
{
case 5: 
return 2;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v54, unsigned int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 6;
unsigned short v57 = 3;
unsigned short v56 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v59, unsigned short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -4;
signed short v63 = 1;
unsigned char v62 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v65;
signed short v66;
v65 = v63 - v63;
v66 = v1 (v65);
history[history_index++] = (int)v66;
}
break;
case 15: 
return v64;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v67, signed int v68, unsigned char v69, signed short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -2;
unsigned char v72 = 4;
unsigned char v71 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v76;
signed short v77;
v76 = 2 + -1;
v77 = v1 (v76);
history[history_index++] = (int)v77;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
