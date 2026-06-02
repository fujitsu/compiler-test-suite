#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned char);
extern signed short v3 (signed char, unsigned char);
extern signed short (*v4) (signed char, unsigned char);
extern signed char v5 (signed int, signed short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, signed short, unsigned short, unsigned int);
unsigned short v7 (signed char, unsigned char);
unsigned short (*v8) (signed char, unsigned char) = v7;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
unsigned char v15 (unsigned short);
unsigned char (*v16) (unsigned short) = v15;
extern signed short v19 (signed char, signed char, signed short);
extern signed short (*v20) (signed char, signed char, signed short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = -4;
unsigned char v31 = 0;

unsigned char v15 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 3;
unsigned int v36 = 2U;
signed int v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned short v40 = 6;
signed short v39 = 0;
unsigned short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 5U;
unsigned char v44 = 5;
unsigned int v43 = 1U;
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
signed short v48;
unsigned char v49;
unsigned short v50;
v48 = v32 + v32;
v49 = 2 - v31;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
