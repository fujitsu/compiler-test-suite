#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed short, unsigned char);
extern unsigned char (*v4) (unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (signed short, unsigned char, signed char);
extern signed int (*v10) (signed short, unsigned char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed short v17 (unsigned int, unsigned int);
signed short (*v18) (unsigned int, unsigned int) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned int, unsigned char);
extern signed char (*v22) (signed int, unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed int, signed short);
extern unsigned char (*v24) (signed int, signed int, signed short);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 3;
unsigned char v31 = 6;

signed short v17 (unsigned int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 4;
unsigned int v37 = 5U;
unsigned int v36 = 1U;
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
unsigned char v41;
unsigned int v42;
unsigned char v43;
v41 = v32 + 7;
v42 = 2U + 5U;
v43 = v1 (v41, v42);
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
