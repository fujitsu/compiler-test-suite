#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int);
extern unsigned char (*v2) (unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, signed char, signed short);
extern unsigned int (*v12) (unsigned char, signed char, signed short);
signed int v15 (signed int, unsigned int, signed short);
signed int (*v16) (signed int, unsigned int, signed short) = v15;
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v21 (unsigned int, unsigned short);
extern signed char (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern void v27 (unsigned char, signed short, signed char, unsigned short);
extern void (*v28) (unsigned char, signed short, signed char, unsigned short);
extern unsigned short v29 (unsigned int, unsigned char, unsigned int, signed int);
extern unsigned short (*v30) (unsigned int, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = 1;
signed char v31 = -3;

signed int v15 (signed int v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
signed char v38 = 3;
signed char v37 = 0;
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
unsigned char v42;
signed int v43;
unsigned char v44;
v42 = 1 + 3;
v43 = 0 - v32;
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
