#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed short);
extern void (*v2) (signed char, signed short);
extern unsigned char v3 (unsigned short, signed char);
extern unsigned char (*v4) (unsigned short, signed char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (signed int, unsigned short, signed int);
extern unsigned short (*v10) (signed int, unsigned short, signed int);
extern unsigned char v11 (unsigned short, signed char);
extern unsigned char (*v12) (unsigned short, signed char);
signed short v13 (unsigned char, signed int, signed int);
signed short (*v14) (unsigned char, signed int, signed int) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned char v29 (signed char, signed short);
extern unsigned char (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed int v32 = 0;
signed short v31 = -4;

unsigned int v27 (void)
{
{
for (;;) {
signed int v36 = -3;
signed short v35 = 2;
signed char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v37, signed int v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 7;
signed short v41 = -1;
signed int v40 = -2;
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
signed char v45;
signed short v46;
v45 = 1 - 0;
v46 = v31 - v31;
v1 (v45, v46);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
