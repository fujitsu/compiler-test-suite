#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
extern unsigned int v3 (signed short, signed int);
extern unsigned int (*v4) (signed short, signed int);
unsigned short v5 (unsigned short, signed char, signed short);
unsigned short (*v6) (unsigned short, signed char, signed short) = v5;
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
extern unsigned char v9 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v10) (unsigned int, signed char, signed char, signed short);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned int, signed char, signed char, signed short);
extern signed char (*v16) (unsigned int, signed char, signed char, signed short);
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed short v19 (unsigned int, signed char, signed short);
extern signed short (*v20) (unsigned int, signed char, signed short);
extern void v21 (signed short, signed char, signed short);
extern void (*v22) (signed short, signed char, signed short);
extern void v23 (unsigned short, unsigned int, unsigned short);
extern void (*v24) (unsigned short, unsigned int, unsigned short);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned char v32 = 6;
signed char v31 = 1;

unsigned char v27 (void)
{
{
for (;;) {
signed int v36 = 0;
unsigned char v35 = 4;
signed char v34 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v37, signed char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 4U;
signed char v41 = 3;
signed char v40 = 2;
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
unsigned short v45;
signed char v46;
unsigned char v47;
v45 = 4 + 2;
v46 = v33 - v31;
v47 = v1 (v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
