#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed char, unsigned char);
unsigned short v3 (signed char);
unsigned short (*v4) (signed char) = v3;
extern void v5 (unsigned char, signed int, unsigned short, signed int);
extern void (*v6) (unsigned char, signed int, unsigned short, signed int);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed int v13 (unsigned int, signed int, unsigned int);
extern signed int (*v14) (unsigned int, signed int, unsigned int);
unsigned char v15 (unsigned int);
unsigned char (*v16) (unsigned int) = v15;
extern unsigned char v17 (signed char, unsigned short, signed char);
extern unsigned char (*v18) (signed char, unsigned short, signed char);
extern signed int v19 (unsigned int, unsigned char, unsigned char);
extern signed int (*v20) (unsigned int, unsigned char, unsigned char);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern signed short v23 (unsigned int, unsigned short, unsigned int);
extern signed short (*v24) (unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned short, unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned short, unsigned char, signed char);
extern signed char v29 (unsigned int, signed short, signed int);
extern signed char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned short v32 = 1;
unsigned char v31 = 5;

unsigned char v15 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
unsigned short v36 = 2;
unsigned int v35 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 3;
signed char v40 = -3;
unsigned char v39 = 2;
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
unsigned short v44;
signed char v45;
unsigned char v46;
unsigned char v47;
v44 = 5 + 5;
v45 = 1 + 3;
v46 = v31 - v31;
v47 = v1 (v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
