#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
extern void v7 (signed int, signed char, signed short);
extern void (*v8) (signed int, signed char, signed short);
extern signed int v9 (unsigned short, unsigned int, unsigned char);
extern signed int (*v10) (unsigned short, unsigned int, unsigned char);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
extern unsigned char v13 (signed short, signed int, unsigned char);
extern unsigned char (*v14) (signed short, signed int, unsigned char);
extern unsigned int v15 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, signed char, unsigned int, unsigned char);
extern signed int v19 (signed int, unsigned char, signed int);
extern signed int (*v20) (signed int, unsigned char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed int v23 (signed int, signed int, signed int);
signed int (*v24) (signed int, signed int, signed int) = v23;
unsigned char v25 (signed short, unsigned short);
unsigned char (*v26) (signed short, unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed short v32 = 0;
unsigned char v31 = 1;

unsigned char v25 (signed short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
signed int v37 = 1;
unsigned char v36 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v39, signed int v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed short v43 = -2;
unsigned short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed short v47 = -2;
unsigned int v46 = 0U;
unsigned char v45 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v48;
unsigned int v49;
unsigned char v50;
signed int v51;
v48 = 1 - 3;
v49 = v46 + v46;
v50 = 3 + v45;
v51 = v9 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return -4;
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
signed int v54;
v54 = v1 ();
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
