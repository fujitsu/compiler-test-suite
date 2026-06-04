#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (unsigned int, signed short, signed int);
extern unsigned char (*v4) (unsigned int, signed short, signed int);
extern unsigned char v5 (unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned int);
extern unsigned int v7 (signed char, signed int, unsigned short, unsigned int);
extern unsigned int (*v8) (signed char, signed int, unsigned short, unsigned int);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned char);
extern unsigned short (*v16) (signed char, unsigned char);
extern void v17 (unsigned int, signed int, unsigned short, unsigned char);
extern void (*v18) (unsigned int, signed int, unsigned short, unsigned char);
extern signed char v19 (signed int, signed char, unsigned short, unsigned char);
extern signed char (*v20) (signed int, signed char, unsigned short, unsigned char);
extern void v21 (unsigned char, unsigned int, unsigned int);
extern void (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char);
extern void v25 (unsigned int, unsigned short, unsigned char);
extern void (*v26) (unsigned int, unsigned short, unsigned char);
signed short v27 (void);
signed short (*v28) (void) = v27;
unsigned short v29 (signed short, signed char, unsigned short, signed short);
unsigned short (*v30) (signed short, signed char, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 2;
unsigned short v31 = 0;

unsigned short v29 (signed short v34, signed char v35, unsigned short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
unsigned char v39 = 6;
signed int v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (void)
{
{
for (;;) {
unsigned short v43 = 4;
signed char v42 = -2;
signed char v41 = 3;
trace++;
switch (trace)
{
case 1: 
return -1;
case 7: 
return 2;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned int v46 = 1U;
unsigned char v45 = 5;
signed short v44 = -1;
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
unsigned char v49;
signed int v50;
v49 = 3 - 5;
v50 = v1 (v49);
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
