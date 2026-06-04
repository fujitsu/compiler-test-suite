#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed int, unsigned char);
extern void (*v2) (signed char, signed int, unsigned char);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern signed char v5 (signed char, signed short, unsigned short);
extern signed char (*v6) (signed char, signed short, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (signed int, signed char, signed char, unsigned int);
extern void (*v10) (signed int, signed char, signed char, unsigned int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned short v17 (signed char, signed int, signed int, signed int);
extern unsigned short (*v18) (signed char, signed int, signed int, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern void v23 (signed short, signed int, signed int);
extern void (*v24) (signed short, signed int, signed int);
extern unsigned int v25 (signed int, signed short, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed short, signed short, unsigned int);
extern void v27 (unsigned short, unsigned int, signed int);
extern void (*v28) (unsigned short, unsigned int, signed int);
extern void v29 (signed short, unsigned int, signed int);
extern void (*v30) (signed short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned int v32 = 1U;
unsigned int v31 = 2U;

signed short v15 (void)
{
{
for (;;) {
signed char v36 = 3;
signed char v35 = 1;
unsigned char v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 4U;
unsigned short v39 = 2;
unsigned int v38 = 1U;
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
signed char v43;
signed int v44;
unsigned char v45;
v43 = v33 - 0;
v44 = -4 + 3;
v45 = 0 - 5;
v1 (v43, v44, v45);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
