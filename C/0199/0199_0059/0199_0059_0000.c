#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
unsigned short v3 (signed int);
unsigned short (*v4) (signed int) = v3;
extern unsigned short v5 (signed short, unsigned char, signed short, signed short);
extern unsigned short (*v6) (signed short, unsigned char, signed short, signed short);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
extern signed short v15 (unsigned short);
extern signed short (*v16) (unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern void v19 (unsigned char, unsigned char, signed short);
extern void (*v20) (unsigned char, unsigned char, signed short);
extern unsigned short v21 (unsigned short, unsigned int, signed char);
extern unsigned short (*v22) (unsigned short, unsigned int, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned int v27 (signed short, signed int);
extern unsigned int (*v28) (signed short, signed int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned char v32 = 5;
unsigned char v31 = 2;

static unsigned short v9 (void)
{
{
for (;;) {
unsigned short v36 = 3;
unsigned int v35 = 7U;
unsigned short v34 = 3;
trace++;
switch (trace)
{
case 2: 
return v36;
default: abort ();
}
}
}
}

unsigned short v3 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
unsigned char v39 = 3;
signed char v38 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v41;
v41 = v9 ();
history[history_index++] = (int)v41;
}
break;
case 3: 
return 3;
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
signed int v44;
v44 = -3 - 0;
v1 (v44);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
