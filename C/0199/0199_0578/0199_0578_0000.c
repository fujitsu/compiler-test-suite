#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned int, unsigned short, unsigned int, signed char);
extern void v3 (unsigned short, signed short, signed int, unsigned char);
extern void (*v4) (unsigned short, signed short, signed int, unsigned char);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern void v7 (unsigned char, signed int);
extern void (*v8) (unsigned char, signed int);
extern void v11 (signed int);
extern void (*v12) (signed int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed short, signed int, unsigned char);
extern signed int (*v18) (unsigned int, signed short, signed int, unsigned char);
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
extern unsigned short v21 (signed short, signed short);
extern unsigned short (*v22) (signed short, signed short);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = 1;
unsigned short v31 = 6;

signed short v23 (void)
{
{
for (;;) {
unsigned int v36 = 1U;
signed char v35 = -3;
signed char v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v39 = -3;
unsigned short v38 = 5;
signed int v37 = 1;
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

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v42;
unsigned short v43;
unsigned int v44;
signed char v45;
unsigned short v46;
v42 = 2U + 6U;
v43 = v31 + v31;
v44 = 7U + 6U;
v45 = 0 - -1;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
