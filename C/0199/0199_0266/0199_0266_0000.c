#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
signed char v3 (unsigned short, signed int, unsigned int, signed char);
signed char (*v4) (unsigned short, signed int, unsigned int, signed char) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed int v7 (unsigned short, unsigned short, unsigned char);
signed int (*v8) (unsigned short, unsigned short, unsigned char) = v7;
extern unsigned int v9 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v10) (unsigned int, signed int, signed int, signed int);
extern signed char v11 (signed int, unsigned char, unsigned int, unsigned char);
extern signed char (*v12) (signed int, unsigned char, unsigned int, unsigned char);
signed int v13 (signed int, unsigned int, unsigned int, unsigned short);
signed int (*v14) (signed int, unsigned int, unsigned int, unsigned short) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
unsigned char v17 (unsigned int, unsigned int, unsigned int, signed char);
unsigned char (*v18) (unsigned int, unsigned int, unsigned int, signed char) = v17;
extern void v19 (signed char, signed int, signed short);
extern void (*v20) (signed char, signed int, signed short);
extern unsigned short v21 (signed short, signed char, unsigned char);
extern unsigned short (*v22) (signed short, signed char, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed int v27 (signed short, unsigned char, unsigned int);
signed int (*v28) (signed short, unsigned char, unsigned int) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned int v32 = 6U;
signed char v31 = -4;

signed char v29 (void)
{
{
for (;;) {
signed short v36 = -1;
signed char v35 = 0;
signed char v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed short v37, unsigned char v38, unsigned int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 4;
signed char v41 = 0;
unsigned char v40 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v43, unsigned int v44, unsigned int v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -4;
unsigned short v48 = 6;
signed int v47 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v50, unsigned int v51, unsigned int v52, unsigned short v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -4;
unsigned char v55 = 0;
unsigned short v54 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v57, unsigned short v58, unsigned char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = -2;
signed short v61 = 2;
unsigned short v60 = 2;
trace++;
switch (trace)
{
case 9: 
{
signed short v63;
v63 = v23 ();
history[history_index++] = (int)v63;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v64, signed int v65, unsigned int v66, signed char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 1;
unsigned short v69 = 0;
signed char v68 = -2;
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
unsigned char v73;
signed short v74;
signed int v75;
v73 = v33 - v33;
v74 = -4 - 2;
v75 = v1 (v73, v74);
history[history_index++] = (int)v75;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
