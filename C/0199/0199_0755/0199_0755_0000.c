#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned int v3 (unsigned int, signed int, unsigned short, signed char);
extern unsigned int (*v4) (unsigned int, signed int, unsigned short, signed char);
extern unsigned short v5 (signed int, signed char);
extern unsigned short (*v6) (signed int, signed char);
extern unsigned short v7 (signed short, signed int, signed int, signed int);
extern unsigned short (*v8) (signed short, signed int, signed int, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed int v13 (unsigned char, unsigned short, unsigned char);
extern signed int (*v14) (unsigned char, unsigned short, unsigned char);
extern void v15 (unsigned int, unsigned int, unsigned short);
extern void (*v16) (unsigned int, unsigned int, unsigned short);
extern unsigned int v19 (signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char, unsigned char);
unsigned char v21 (signed char, signed int, signed short);
unsigned char (*v22) (signed char, signed int, signed short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (unsigned short, signed int, unsigned int);
extern signed int (*v26) (unsigned short, signed int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned char (*v28) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed char v32 = -1;
unsigned short v31 = 2;

unsigned char v21 (signed char v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 2U;
unsigned int v38 = 4U;
signed short v37 = 3;
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
signed int v42;
signed int v43;
v42 = 0 - -3;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
