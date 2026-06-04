#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern unsigned char v3 (signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned char, unsigned int);
extern signed int v5 (unsigned char, signed char);
extern signed int (*v6) (unsigned char, signed char);
extern signed char v7 (unsigned char, signed short, signed char, signed short);
extern signed char (*v8) (unsigned char, signed short, signed char, signed short);
extern unsigned short v9 (signed int, signed char, unsigned int, signed short);
extern unsigned short (*v10) (signed int, signed char, unsigned int, signed short);
unsigned int v11 (unsigned short, signed short, signed short);
unsigned int (*v12) (unsigned short, signed short, signed short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed int, signed char);
extern unsigned int (*v16) (unsigned int, signed int, signed char);
extern signed char v17 (unsigned short, signed int);
extern signed char (*v18) (unsigned short, signed int);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern signed int v21 (unsigned char, unsigned char, signed int);
extern signed int (*v22) (unsigned char, unsigned char, signed int);
extern signed short v23 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, signed char, unsigned short);
extern signed char v25 (unsigned short, signed short, signed int);
extern signed char (*v26) (unsigned short, signed short, signed int);
extern unsigned short v27 (signed short);
extern unsigned short (*v28) (signed short);
extern unsigned char v29 (signed int, signed short, signed short);
extern unsigned char (*v30) (signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed char v32 = -3;
signed short v31 = 1;

unsigned int v11 (unsigned short v34, signed short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -4;
signed int v38 = 2;
unsigned short v37 = 6;
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
signed short v42;
signed short v43;
signed int v44;
v42 = v31 + -1;
v43 = -4 - v31;
v44 = v1 (v42, v43);
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
