#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (signed char, signed short);
extern void (*v12) (signed char, signed short);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
unsigned char v15 (unsigned char, unsigned short, signed short, signed short);
unsigned char (*v16) (unsigned char, unsigned short, signed short, signed short) = v15;
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
signed int v19 (unsigned int, signed short, signed int);
signed int (*v20) (unsigned int, signed short, signed int) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern unsigned int v23 (unsigned char, signed short, unsigned int, signed char);
extern unsigned int (*v24) (unsigned char, signed short, unsigned int, signed char);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, unsigned int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed short v32 = -3;
signed char v31 = -2;

signed int v19 (unsigned int v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 3;
unsigned short v38 = 2;
signed int v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned char v40, unsigned short v41, signed short v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 2;
unsigned int v45 = 4U;
unsigned char v44 = 7;
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
unsigned short v49;
v49 = v1 ();
history[history_index++] = (int)v49;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
