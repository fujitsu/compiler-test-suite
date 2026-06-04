#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed char, unsigned int);
extern signed int (*v2) (signed int, signed char, unsigned int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
unsigned char v7 (signed short, unsigned char, unsigned char, signed char);
unsigned char (*v8) (signed short, unsigned char, unsigned char, signed char) = v7;
extern void v9 (signed short, signed char, signed short, unsigned short);
extern void (*v10) (signed short, signed char, signed short, unsigned short);
extern unsigned int v11 (signed int);
extern unsigned int (*v12) (signed int);
extern signed int v13 (signed short, signed short, signed short, unsigned short);
extern signed int (*v14) (signed short, signed short, signed short, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed short v19 (signed char, unsigned short, unsigned short);
extern signed short (*v20) (signed char, unsigned short, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed char v23 (signed char, unsigned short);
extern signed char (*v24) (signed char, unsigned short);
extern signed int v25 (signed char, unsigned char);
extern signed int (*v26) (signed char, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned char, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed short v32 = 1;
signed char v31 = 2;

unsigned char v7 (signed short v34, unsigned char v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 5;
signed char v39 = -3;
unsigned char v38 = 0;
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
signed int v43;
signed char v44;
unsigned int v45;
signed int v46;
v43 = 1 - 1;
v44 = 2 - v31;
v45 = v33 + v33;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
