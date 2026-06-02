#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
unsigned char v17 (unsigned char, unsigned char, signed char);
unsigned char (*v18) (unsigned char, unsigned char, signed char) = v17;
extern signed char v19 (signed short, unsigned short, unsigned short);
extern signed char (*v20) (signed short, unsigned short, unsigned short);
extern unsigned int v21 (signed short, unsigned int, signed char);
extern unsigned int (*v22) (signed short, unsigned int, signed char);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern unsigned char v25 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short, signed char, unsigned short);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
unsigned char v32 = 6;
signed short v31 = 2;

unsigned int v27 (void)
{
{
for (;;) {
unsigned char v36 = 1;
signed int v35 = -1;
unsigned short v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v37, unsigned char v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 2;
unsigned int v41 = 5U;
unsigned short v40 = 0;
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
unsigned char v45;
signed int v46;
v45 = 5 + v32;
v46 = v1 (v45);
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
