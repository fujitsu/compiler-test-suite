#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed short, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed short, unsigned int, unsigned char);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern unsigned char v7 (signed int, unsigned char);
extern unsigned char (*v8) (signed int, unsigned char);
extern signed short v9 (unsigned int, unsigned char, signed char);
extern signed short (*v10) (unsigned int, unsigned char, signed char);
signed int v11 (signed short);
signed int (*v12) (signed short) = v11;
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern unsigned int v15 (unsigned int, signed char, signed int, unsigned int);
extern unsigned int (*v16) (unsigned int, signed char, signed int, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
unsigned char v21 (unsigned char, unsigned short);
unsigned char (*v22) (unsigned char, unsigned short) = v21;
extern signed short v23 (unsigned int, unsigned int, signed short, unsigned short);
extern signed short (*v24) (unsigned int, unsigned int, signed short, unsigned short);
unsigned char v25 (unsigned char, signed short);
unsigned char (*v26) (unsigned char, signed short) = v25;
signed int v27 (unsigned int);
signed int (*v28) (unsigned int) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = 1;
unsigned char v31 = 7;

signed int v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
unsigned int v36 = 2U;
unsigned short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v38, signed short v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 6;
signed int v41 = -1;
unsigned short v40 = 3;
trace++;
switch (trace)
{
case 1: 
return v38;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v43, unsigned short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 1;
unsigned int v46 = 6U;
unsigned short v45 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 3;
unsigned short v50 = 2;
signed char v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 2U;
signed int v54 = -2;
unsigned short v53 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed int v56;
unsigned char v57;
unsigned char v58;
v56 = 1 - v54;
v57 = 6 + 2;
v58 = v7 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 13: 
return;
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
signed char v61;
signed short v62;
unsigned int v63;
unsigned char v64;
signed char v65;
v61 = v33 + 0;
v62 = -1 + v32;
v63 = 2U + 2U;
v64 = 0 - 0;
v65 = v1 (v61, v62, v63, v64);
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
