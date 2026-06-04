#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed char v5 (unsigned char, signed char, unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, signed char, unsigned char, unsigned char);
signed int v7 (signed short, signed char, signed int);
signed int (*v8) (signed short, signed char, signed int) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed int, signed short, signed short);
extern void (*v14) (signed int, signed short, signed short);
extern unsigned short v15 (unsigned int, signed int);
extern unsigned short (*v16) (unsigned int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed int v19 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int (*v20) (unsigned short, unsigned char, unsigned int, unsigned int);
extern unsigned char v21 (unsigned int, unsigned int);
extern unsigned char (*v22) (unsigned int, unsigned int);
extern signed short v23 (signed short, signed int, signed char);
extern signed short (*v24) (signed short, signed int, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 1U;
unsigned int v31 = 4U;

signed int v7 (signed short v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -2;
unsigned int v38 = 3U;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
case 1: 
return -4;
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
unsigned int v43;
unsigned char v44;
v42 = -1 + -2;
v43 = v31 + v31;
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
