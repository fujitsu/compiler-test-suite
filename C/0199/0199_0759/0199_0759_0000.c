#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern unsigned char v5 (unsigned int, unsigned char);
extern unsigned char (*v6) (unsigned int, unsigned char);
extern unsigned int v7 (unsigned int, unsigned char);
extern unsigned int (*v8) (unsigned int, unsigned char);
extern signed short v9 (unsigned short, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (unsigned char, signed char, unsigned int);
extern signed char (*v14) (unsigned char, signed char, unsigned int);
extern signed char v15 (unsigned short, unsigned int, unsigned int, signed short);
extern signed char (*v16) (unsigned short, unsigned int, unsigned int, signed short);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern unsigned char v21 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int, signed char, unsigned int);
unsigned short v25 (signed int, unsigned int);
unsigned short (*v26) (signed int, unsigned int) = v25;
extern signed int v27 (unsigned short, signed char, unsigned int, unsigned char);
extern signed int (*v28) (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed char v32 = 2;
signed int v31 = 2;

unsigned short v25 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 3;
signed short v37 = 2;
unsigned char v36 = 4;
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
unsigned short v41;
signed int v42;
v41 = 4 - 4;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
