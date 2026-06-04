#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed char, signed char);
extern void (*v2) (unsigned short, signed char, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern unsigned char v7 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned int, signed char);
extern unsigned short v9 (signed char, signed char);
extern unsigned short (*v10) (signed char, signed char);
extern signed int v11 (unsigned int, unsigned int, unsigned int);
extern signed int (*v12) (unsigned int, unsigned int, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned char, unsigned short, signed int);
extern signed short (*v18) (unsigned char, unsigned short, signed int);
extern unsigned int v19 (signed short, signed short, unsigned char, signed char);
extern unsigned int (*v20) (signed short, signed short, unsigned char, signed char);
unsigned char v21 (signed int);
unsigned char (*v22) (signed int) = v21;
extern signed char v23 (unsigned int, unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned int, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned short, unsigned int);
extern unsigned short (*v28) (unsigned int, signed short, unsigned short, unsigned int);
signed int v29 (signed char, signed int);
signed int (*v30) (signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 3;
unsigned char v31 = 4;

signed int v29 (signed char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 5;
unsigned int v37 = 2U;
signed int v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 2;
signed int v41 = -2;
unsigned short v40 = 2;
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
signed char v47;
v45 = 7 - v32;
v46 = -3 - v33;
v47 = 1 - v33;
v1 (v45, v46, v47);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
