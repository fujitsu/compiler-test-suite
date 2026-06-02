#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (unsigned char, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
extern signed char v15 (signed char, unsigned short, signed int);
extern signed char (*v16) (signed char, unsigned short, signed int);
unsigned int v17 (signed char, signed int);
unsigned int (*v18) (signed char, signed int) = v17;
extern unsigned short v19 (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned int, unsigned short, unsigned short);
extern signed short v21 (signed char, unsigned int, unsigned short);
extern signed short (*v22) (signed char, unsigned int, unsigned short);
extern unsigned char v23 (signed int, unsigned char);
extern unsigned char (*v24) (signed int, unsigned char);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned char v32 = 7;
signed int v31 = 3;

unsigned int v17 (signed char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
signed char v37 = 3;
unsigned short v36 = 7;
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
signed char v41;
unsigned char v42;
v41 = 2 + 2;
v42 = 6 - 2;
v1 (v41, v42);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
