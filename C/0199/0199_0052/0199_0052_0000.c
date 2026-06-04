#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned char, unsigned int);
extern void v13 (signed char, unsigned int, signed char, signed int);
extern void (*v14) (signed char, unsigned int, signed char, signed int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned char);
unsigned char v23 (unsigned short, signed short, signed int, signed short);
unsigned char (*v24) (unsigned short, signed short, signed int, signed short) = v23;
unsigned int v25 (unsigned char, signed char, unsigned int);
unsigned int (*v26) (unsigned char, signed char, unsigned int) = v25;
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed short v32 = -4;
signed short v31 = 1;

unsigned int v25 (unsigned char v34, signed char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 5U;
signed short v38 = 2;
unsigned char v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v40, signed short v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -2;
signed short v45 = -2;
signed char v44 = -4;
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
signed short v50;
v49 = 7 - 5;
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
