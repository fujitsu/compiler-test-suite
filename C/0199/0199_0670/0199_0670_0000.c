#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed short v3 (unsigned short, signed short, unsigned int, signed char);
extern signed short (*v4) (unsigned short, signed short, unsigned int, signed char);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed short v7 (unsigned short, signed char);
extern signed short (*v8) (unsigned short, signed char);
extern unsigned short v9 (unsigned char, unsigned char, unsigned short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned short);
extern signed char v11 (signed short, signed int, signed int, signed short);
extern signed char (*v12) (signed short, signed int, signed int, signed short);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
extern void v15 (unsigned char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, signed char);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned int v21 (unsigned int, unsigned char, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
unsigned char v27 (unsigned short, signed char);
unsigned char (*v28) (unsigned short, signed char) = v27;
extern signed int v29 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = -1;
unsigned int v31 = 0U;

unsigned char v27 (unsigned short v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -1;
unsigned short v37 = 7;
signed char v36 = -3;
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
signed short v41;
unsigned short v42;
v41 = 3 - 1;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
