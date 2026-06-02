#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed int, signed short, signed short);
extern signed int v3 (unsigned short, signed int, unsigned short);
extern signed int (*v4) (unsigned short, signed int, unsigned short);
extern unsigned int v5 (signed short, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char);
signed char v7 (unsigned char, signed short, signed int);
signed char (*v8) (unsigned char, signed short, signed int) = v7;
extern void v9 (signed int);
extern void (*v10) (signed int);
extern void v11 (unsigned short, signed short, unsigned char);
extern void (*v12) (unsigned short, signed short, unsigned char);
unsigned short v13 (unsigned int, signed char, signed char, unsigned short);
unsigned short (*v14) (unsigned int, signed char, signed char, unsigned short) = v13;
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned char v19 (unsigned char, signed int, unsigned short, signed int);
unsigned char (*v20) (unsigned char, signed int, unsigned short, signed int) = v19;
extern unsigned int v21 (signed int, signed short, unsigned int);
extern unsigned int (*v22) (signed int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed int, signed char);
extern signed char (*v24) (unsigned char, signed int, signed char);
unsigned int v25 (unsigned int);
unsigned int (*v26) (unsigned int) = v25;
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed short, signed int);
extern unsigned char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed short v32 = 0;
signed int v31 = -2;

unsigned int v25 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -3;
signed int v36 = -1;
unsigned short v35 = 3;
trace++;
switch (trace)
{
case 10: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned char v38, signed int v39, unsigned short v40, signed int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
unsigned int v43 = 2U;
unsigned int v42 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 2;
unsigned short v47 = 5;
unsigned int v46 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v49, signed char v50, signed char v51, unsigned short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 2U;
unsigned short v54 = 5;
unsigned char v53 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v56, signed short v57, signed int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 7U;
unsigned short v60 = 6;
signed char v59 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v62;
signed short v63;
unsigned char v64;
v62 = 1 - v60;
v63 = 2 - 2;
v64 = 0 - 3;
v11 (v62, v63, v64);
}
break;
case 5: 
{
unsigned short v65;
signed short v66;
unsigned char v67;
v65 = v60 + 1;
v66 = -4 + v57;
v67 = v56 - 1;
v11 (v65, v66, v67);
}
break;
case 15: 
return v59;
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
unsigned char v70;
signed int v71;
signed short v72;
signed short v73;
unsigned char v74;
v70 = 6 + 7;
v71 = 3 - -3;
v72 = v32 + v32;
v73 = v32 - -2;
v74 = v1 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
