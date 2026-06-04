#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned char, unsigned short);
extern unsigned int (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned int v7 (signed int, signed int, unsigned short);
unsigned int (*v8) (signed int, signed int, unsigned short) = v7;
extern signed char v9 (unsigned char);
extern signed char (*v10) (unsigned char);
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed int);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed int);
extern signed short v15 (signed char, unsigned short, signed short);
extern signed short (*v16) (signed char, unsigned short, signed short);
extern signed int v17 (signed int, signed int, unsigned int);
extern signed int (*v18) (signed int, signed int, unsigned int);
extern unsigned int v19 (signed char);
extern unsigned int (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned short v25 (signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (signed char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char, unsigned int, signed short);
extern unsigned char (*v28) (unsigned char, unsigned int, signed short);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned short v32 = 1;
signed char v31 = -3;

unsigned int v7 (signed int v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
unsigned short v38 = 0;
signed short v37 = -3;
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
unsigned short v44;
unsigned int v45;
v42 = v32 + v32;
v43 = 0 + 1;
v44 = v33 - v33;
v45 = v1 (v42, v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
