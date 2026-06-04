#include <stdio.h>
#include <stdlib.h>
static void v1 (signed int, unsigned short);
static void (*v2) (signed int, unsigned short) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed int, unsigned int, unsigned int);
extern void (*v6) (signed short, signed int, unsigned int, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed int v17 (signed int, signed short);
extern signed int (*v18) (signed int, signed short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
unsigned char v21 (signed char, signed int, unsigned short, signed int);
unsigned char (*v22) (signed char, signed int, unsigned short, signed int) = v21;
extern void v23 (unsigned short, signed int, unsigned char, unsigned short);
extern void (*v24) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
unsigned short v29 (signed int, unsigned char, signed int, unsigned short);
unsigned short (*v30) (signed int, unsigned char, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned short v32 = 4;
unsigned int v31 = 5U;

unsigned short v29 (signed int v34, unsigned char v35, signed int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
signed int v39 = 2;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed char v41, signed int v42, unsigned short v43, signed int v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 1;
signed int v46 = -4;
unsigned short v45 = 0;
trace++;
switch (trace)
{
case 5: 
return 7;
case 7: 
return 7;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed char v50 = 2;
unsigned char v49 = 4;
signed char v48 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 7U;
signed char v53 = 0;
unsigned char v52 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed int v55, unsigned short v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 1;
signed short v58 = -1;
signed short v57 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v60;
v60 = v25 ();
history[history_index++] = (int)v60;
}
break;
case 2: 
{
unsigned int v61;
v61 = v3 ();
history[history_index++] = (int)v61;
}
break;
case 14: 
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
signed int v64;
unsigned short v65;
v64 = 3 - -2;
v65 = 2 + v32;
v1 (v64, v65);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
