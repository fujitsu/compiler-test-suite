#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, unsigned short);
extern signed short (*v2) (signed int, unsigned short, unsigned short);
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (unsigned short, signed char);
unsigned short (*v8) (unsigned short, signed char) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
unsigned int v13 (unsigned int, signed char);
unsigned int (*v14) (unsigned int, signed char) = v13;
extern unsigned int v15 (signed int, signed short, unsigned int, unsigned short);
extern unsigned int (*v16) (signed int, signed short, unsigned int, unsigned short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned short v19 (unsigned short, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned short, unsigned int, unsigned char);
signed short v21 (unsigned char, unsigned char, unsigned int, signed short);
signed short (*v22) (unsigned char, unsigned char, unsigned int, signed short) = v21;
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern unsigned int v25 (signed char, unsigned char, unsigned int, signed short);
extern unsigned int (*v26) (signed char, unsigned char, unsigned int, signed short);
extern unsigned int v27 (signed int, unsigned short, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short, unsigned short);
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 1;
unsigned short v31 = 5;

signed short v21 (unsigned char v34, unsigned char v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
unsigned short v39 = 0;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 7U;
signed int v44 = -1;
unsigned short v43 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned char v48 = 4;
signed char v47 = 0;
unsigned short v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned short v51 = 3;
unsigned short v50 = 7;
signed char v49 = -4;
trace++;
switch (trace)
{
case 1: 
return v50;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -1;
unsigned short v55 = 2;
signed char v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -4;
signed int v59 = -1;
signed int v58 = -2;
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
signed int v63;
unsigned short v64;
unsigned short v65;
signed short v66;
v63 = 1 + -3;
v64 = v31 + 2;
v65 = v32 - v31;
v66 = v1 (v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
