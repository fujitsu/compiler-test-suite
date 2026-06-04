#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern unsigned int v5 (unsigned char, signed char);
extern unsigned int (*v6) (unsigned char, signed char);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned int v11 (signed short, signed char, signed char);
extern unsigned int (*v12) (signed short, signed char, signed char);
extern signed int v13 (signed short, signed char, unsigned char);
extern signed int (*v14) (signed short, signed char, unsigned char);
extern signed char v15 (signed short, unsigned char, signed int);
extern signed char (*v16) (signed short, unsigned char, signed int);
extern unsigned char v17 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v18) (unsigned int, signed short, unsigned char, signed short);
extern void v19 (signed int, unsigned char, signed short, unsigned int);
extern void (*v20) (signed int, unsigned char, signed short, unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned int v32 = 2U;
unsigned int v31 = 3U;

signed int v7 (void)
{
{
for (;;) {
signed char v36 = 3;
signed short v35 = 1;
unsigned char v34 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned char v39 = 5;
signed char v38 = -1;
signed short v37 = -1;
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
unsigned short v42;
unsigned char v43;
v42 = 2 + 2;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
