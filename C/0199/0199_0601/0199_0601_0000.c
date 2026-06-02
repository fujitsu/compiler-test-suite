#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
unsigned char v3 (unsigned short, signed short, signed char);
unsigned char (*v4) (unsigned short, signed short, signed char) = v3;
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed int, unsigned char);
extern signed char (*v10) (unsigned char, signed int, unsigned char);
extern signed char v11 (signed short, unsigned short, unsigned short, signed char);
extern signed char (*v12) (signed short, unsigned short, unsigned short, signed char);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (signed short, unsigned char, signed int, signed char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, signed char);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v24) (signed char, unsigned char, unsigned short, unsigned short);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed short v27 (unsigned char, signed char, signed char, unsigned short);
extern signed short (*v28) (unsigned char, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned char v32 = 0;
unsigned short v31 = 6;

unsigned char v3 (unsigned short v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned int v38 = 4U;
unsigned short v37 = 0;
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
signed char v42;
signed char v43;
v42 = -1 - 1;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
