#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned int, signed short, signed short, unsigned short);
static signed int (*v2) (unsigned int, signed short, signed short, unsigned short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed char, unsigned short, unsigned int, signed short);
extern void (*v8) (signed char, unsigned short, unsigned int, signed short);
extern unsigned int v9 (signed char, signed short, unsigned int, signed int);
extern unsigned int (*v10) (signed char, signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, unsigned char, signed short);
extern signed int (*v14) (unsigned short, unsigned char, signed short);
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern unsigned char v17 (unsigned short, signed char, signed int);
extern unsigned char (*v18) (unsigned short, signed char, signed int);
extern void v19 (signed short);
extern void (*v20) (signed short);
extern void v23 (unsigned int, signed char);
extern void (*v24) (unsigned int, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed short v32 = -2;
signed char v31 = 2;

unsigned char v15 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -2;
unsigned char v36 = 2;
unsigned int v35 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned int v38, signed short v39, signed short v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 3;
unsigned int v43 = 5U;
unsigned short v42 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v45;
v45 = v3 ();
history[history_index++] = (int)v45;
}
break;
case 14: 
return -2;
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
unsigned int v48;
signed short v49;
signed short v50;
unsigned short v51;
signed int v52;
v48 = 0U + 2U;
v49 = -4 + v32;
v50 = 1 + 2;
v51 = 7 + 5;
v52 = v1 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
