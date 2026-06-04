#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, signed char, signed char, unsigned char);
extern void (*v2) (signed int, signed char, signed char, unsigned char);
extern void v3 (signed int, unsigned int, unsigned short);
extern void (*v4) (signed int, unsigned int, unsigned short);
extern unsigned short v5 (signed char, unsigned char);
extern unsigned short (*v6) (signed char, unsigned char);
extern unsigned int v7 (signed short, signed char, unsigned short, signed char);
extern unsigned int (*v8) (signed short, signed char, unsigned short, signed char);
extern unsigned char v9 (unsigned int, signed int, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned int, signed int, unsigned short, unsigned int);
signed int v11 (unsigned short, unsigned short);
signed int (*v12) (unsigned short, unsigned short) = v11;
extern unsigned short v13 (signed char, signed short, signed char, unsigned char);
extern unsigned short (*v14) (signed char, signed short, signed char, unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
signed int v23 (signed int, unsigned char, unsigned char);
signed int (*v24) (signed int, unsigned char, unsigned char) = v23;
extern signed short v25 (signed short, signed short);
extern signed short (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned short, signed int, signed char);
extern unsigned char (*v28) (unsigned short, signed int, signed char);
extern unsigned int v29 (signed char, unsigned char);
extern unsigned int (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 1;
unsigned short v31 = 6;

signed int v23 (signed int v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 7;
unsigned char v38 = 4;
signed char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v40, unsigned short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 0;
signed char v43 = 0;
unsigned int v42 = 6U;
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
signed int v47;
signed char v48;
signed char v49;
unsigned char v50;
v47 = 0 - 3;
v48 = -3 + -4;
v49 = 1 + 2;
v50 = 4 + 0;
v1 (v47, v48, v49, v50);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
