#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
unsigned char v9 (signed short);
unsigned char (*v10) (signed short) = v9;
extern signed char v11 (unsigned short, signed short, unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed short, unsigned short, signed char);
extern signed int v13 (unsigned short, unsigned char);
extern signed int (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (signed short, unsigned int, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned int, signed char, signed int);
unsigned int v23 (unsigned int, unsigned char, signed int, signed int);
unsigned int (*v24) (unsigned int, unsigned char, signed int, signed int) = v23;
extern signed char v25 (unsigned int, signed int, signed int, unsigned int);
extern signed char (*v26) (unsigned int, signed int, signed int, unsigned int);
extern unsigned int v27 (signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char);
extern void v29 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed int v32 = -1;
signed int v31 = -4;

unsigned int v23 (unsigned int v34, unsigned char v35, signed int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 0;
signed char v39 = 0;
signed char v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed short v43 = -3;
unsigned int v42 = 7U;
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
signed short v47;
unsigned short v48;
unsigned int v49;
signed int v50;
v47 = v33 + v33;
v48 = 6 - 2;
v49 = 4U + 6U;
v50 = v1 (v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
