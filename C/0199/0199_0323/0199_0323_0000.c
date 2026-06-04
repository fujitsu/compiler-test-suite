#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern unsigned short v3 (signed int, unsigned char, signed int, unsigned char);
extern unsigned short (*v4) (signed int, unsigned char, signed int, unsigned char);
signed short v5 (signed short, unsigned short, signed char);
signed short (*v6) (signed short, unsigned short, signed char) = v5;
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern unsigned char v9 (unsigned char, unsigned int, signed char);
extern unsigned char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned int, unsigned int);
extern void v15 (unsigned short, signed short, signed short, unsigned char);
extern void (*v16) (unsigned short, signed short, signed short, unsigned char);
signed char v17 (unsigned int, unsigned int, unsigned char, signed short);
signed char (*v18) (unsigned int, unsigned int, unsigned char, signed short) = v17;
extern unsigned char v19 (unsigned int, signed char, unsigned short, signed char);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short, unsigned short, unsigned short);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
unsigned char v32 = 0;
signed short v31 = 1;

signed char v17 (unsigned int v34, unsigned int v35, unsigned char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -1;
signed int v39 = -1;
signed int v38 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v41, unsigned short v42, signed char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 6;
signed short v45 = -3;
signed char v44 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
signed short v49 = 2;
unsigned char v48 = 1;
signed int v47 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v50;
unsigned char v51;
v50 = 5 + v48;
v51 = v7 (v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return v49;
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
signed short v54;
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
