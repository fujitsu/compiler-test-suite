#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned int, signed short, unsigned char);
extern signed short (*v2) (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed short v5 (unsigned short, signed int, unsigned short);
extern signed short (*v6) (unsigned short, signed int, unsigned short);
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
extern signed short v9 (signed char, unsigned char, unsigned char);
extern signed short (*v10) (signed char, unsigned char, unsigned char);
extern signed char v13 (signed int, unsigned char, unsigned char, unsigned char);
extern signed char (*v14) (signed int, unsigned char, unsigned char, unsigned char);
signed char v15 (unsigned int);
signed char (*v16) (unsigned int) = v15;
extern signed char v17 (unsigned int, signed char);
extern signed char (*v18) (unsigned int, signed char);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
extern void v21 (unsigned char, signed short, signed short, signed char);
extern void (*v22) (unsigned char, signed short, signed short, signed char);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern unsigned short v25 (signed char, unsigned short, signed short);
extern unsigned short (*v26) (signed char, unsigned short, signed short);
extern unsigned int v27 (unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 4;
signed char v31 = -2;

signed char v15 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 5;
signed char v36 = -1;
signed short v35 = -2;
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
unsigned char v40;
unsigned int v41;
signed short v42;
unsigned char v43;
signed short v44;
v40 = 5 - 3;
v41 = 5U + 5U;
v42 = 0 + 2;
v43 = 5 - 2;
v44 = v1 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
