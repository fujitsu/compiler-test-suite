#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, signed short, unsigned char);
extern signed short (*v2) (unsigned short, signed short, unsigned char);
extern signed int v3 (signed int, signed short, unsigned short);
extern signed int (*v4) (signed int, signed short, unsigned short);
void v5 (unsigned short, signed char);
void (*v6) (unsigned short, signed char) = v5;
unsigned int v7 (signed short, unsigned int);
unsigned int (*v8) (signed short, unsigned int) = v7;
extern unsigned short v9 (unsigned int, signed char);
extern unsigned short (*v10) (unsigned int, signed char);
signed char v11 (signed char, signed char);
signed char (*v12) (signed char, signed char) = v11;
unsigned short v13 (void);
unsigned short (*v14) (void) = v13;
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
signed char v19 (signed int, signed int);
signed char (*v20) (signed int, signed int) = v19;
extern unsigned int v21 (unsigned char, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed char, unsigned int);
extern void v23 (signed short, unsigned int, signed short);
extern void (*v24) (signed short, unsigned int, signed short);
extern signed char v25 (unsigned short, unsigned char, signed char, signed int);
extern signed char (*v26) (unsigned short, unsigned char, signed char, signed int);
extern signed short v29 (signed char, unsigned char);
extern signed short (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed short v32 = -1;
signed int v31 = 1;

signed char v19 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
unsigned char v37 = 3;
unsigned int v36 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (void)
{
{
for (;;) {
signed short v41 = -3;
signed char v40 = 2;
unsigned short v39 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v42, signed char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 4;
unsigned short v45 = 2;
signed short v44 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v47;
signed int v48;
signed int v49;
v47 = v45 - v45;
v48 = 2 - -2;
v49 = v17 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned int v7 (signed short v50, unsigned int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 3;
signed short v53 = 3;
signed char v52 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 2;
signed int v58 = -4;
unsigned short v57 = 3;
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
unsigned short v62;
signed short v63;
unsigned char v64;
signed short v65;
v62 = 0 - 1;
v63 = 0 - v32;
v64 = 7 - 1;
v65 = v1 (v62, v63, v64);
history[history_index++] = (int)v65;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
