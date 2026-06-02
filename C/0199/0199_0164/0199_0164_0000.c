#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char);
extern signed short (*v2) (unsigned char, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char, unsigned int);
extern signed char (*v14) (signed char, unsigned int);
extern unsigned char v15 (unsigned short, signed char, signed short);
extern unsigned char (*v16) (unsigned short, signed char, signed short);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern unsigned int v19 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern void v23 (unsigned char, signed short, signed int, signed short);
extern void (*v24) (unsigned char, signed short, signed int, signed short);
extern void v25 (unsigned char, signed char);
extern void (*v26) (unsigned char, signed char);
extern signed int v27 (unsigned int, unsigned char, signed int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned char, signed int, unsigned int);
unsigned char v29 (signed char, unsigned char);
unsigned char (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned int v32 = 6U;
unsigned int v31 = 7U;

unsigned char v29 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -3;
unsigned char v37 = 2;
signed int v36 = 0;
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
unsigned char v42;
signed short v43;
v41 = 0 - 1;
v42 = 2 + 2;
v43 = v1 (v41, v42);
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
