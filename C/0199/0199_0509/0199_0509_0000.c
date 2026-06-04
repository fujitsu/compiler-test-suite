#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned char v7 (signed int, signed char, signed char, signed short);
extern unsigned char (*v8) (signed int, signed char, signed char, signed short);
extern unsigned char v9 (unsigned char, signed short, signed char, signed short);
extern unsigned char (*v10) (unsigned char, signed short, signed char, signed short);
extern signed int v11 (signed short, unsigned char, unsigned short, unsigned short);
extern signed int (*v12) (signed short, unsigned char, unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, signed int, signed int);
extern unsigned int (*v14) (unsigned char, signed int, signed int);
signed int v15 (unsigned short);
signed int (*v16) (unsigned short) = v15;
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed char v19 (signed int, unsigned int, unsigned int);
extern signed char (*v20) (signed int, unsigned int, unsigned int);
extern unsigned char v21 (signed char, unsigned short, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed char);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern void v27 (unsigned char, signed int, unsigned short);
extern void (*v28) (unsigned char, signed int, unsigned short);
extern signed int v29 (unsigned short);
extern signed int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned int v32 = 2U;
unsigned char v31 = 7;

signed int v15 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 0;
signed char v36 = -1;
unsigned char v35 = 7;
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
signed short v40;
unsigned char v41;
signed char v42;
unsigned char v43;
v40 = v33 + v33;
v41 = 1 + 3;
v42 = 3 + -4;
v43 = v1 (v40, v41, v42);
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
