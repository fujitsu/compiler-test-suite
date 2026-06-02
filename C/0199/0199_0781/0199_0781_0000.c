#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, unsigned short, signed short);
extern signed int (*v2) (unsigned char, unsigned short, unsigned short, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
signed char v5 (signed short);
signed char (*v6) (signed short) = v5;
extern void v7 (void);
extern void (*v8) (void);
unsigned short v9 (unsigned char, signed short);
unsigned short (*v10) (unsigned char, signed short) = v9;
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern signed int v17 (signed int, signed char, signed char);
extern signed int (*v18) (signed int, signed char, signed char);
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
extern void v21 (unsigned char, signed char, signed short);
extern void (*v22) (unsigned char, signed char, signed short);
extern unsigned short v23 (signed short, signed int);
extern unsigned short (*v24) (signed short, signed int);
extern void v25 (signed short, unsigned short, unsigned char);
extern void (*v26) (signed short, unsigned short, unsigned char);
extern unsigned char v27 (unsigned short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, signed short, unsigned int);
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned short v32 = 2;
signed int v31 = 3;

unsigned short v9 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
signed short v37 = 0;
signed int v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -4;
unsigned char v41 = 3;
signed short v40 = -1;
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
unsigned short v46;
unsigned short v47;
signed short v48;
signed int v49;
v45 = 2 + 5;
v46 = 5 - v32;
v47 = v32 + v32;
v48 = 3 - -3;
v49 = v1 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
