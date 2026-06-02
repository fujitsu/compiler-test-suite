#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed short);
extern unsigned int (*v2) (signed int, signed short);
extern signed char v3 (unsigned int, unsigned char, unsigned int);
extern signed char (*v4) (unsigned int, unsigned char, unsigned int);
unsigned int v5 (signed char, unsigned int, signed int);
unsigned int (*v6) (signed char, unsigned int, signed int) = v5;
extern unsigned int v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed short v9 (unsigned char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, unsigned int, unsigned char);
extern signed char v11 (signed short, signed char, signed short);
extern signed char (*v12) (signed short, signed char, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
extern signed int v19 (signed short, unsigned char, signed short);
extern signed int (*v20) (signed short, unsigned char, signed short);
extern signed short v21 (unsigned int, signed char);
extern signed short (*v22) (unsigned int, signed char);
extern unsigned int v23 (signed char, signed char);
extern unsigned int (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed short, signed int);
extern signed int (*v28) (signed short, signed int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed short v32 = -3;
signed int v31 = -4;

unsigned int v5 (signed char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -3;
signed short v38 = -4;
unsigned int v37 = 4U;
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
signed int v42;
signed short v43;
unsigned int v44;
v42 = 3 + v31;
v43 = v32 + v32;
v44 = v1 (v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
