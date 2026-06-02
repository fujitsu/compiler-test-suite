#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned short);
static unsigned int (*v2) (unsigned short) = v1;
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern unsigned short v11 (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
unsigned int v32 = 0U;
signed short v31 = 3;

static unsigned int v1 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 6;
signed int v36 = 2;
unsigned char v35 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v38;
v38 = v15 ();
history[history_index++] = (int)v38;
}
break;
case 12: 
return 4U;
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
unsigned short v41;
unsigned int v42;
v41 = 6 - 7;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
