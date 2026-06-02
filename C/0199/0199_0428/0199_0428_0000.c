#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, unsigned short, unsigned char, signed int);
extern signed int (*v2) (signed char, unsigned short, unsigned char, signed int);
signed char v3 (signed int, unsigned short, signed char);
signed char (*v4) (signed int, unsigned short, signed char) = v3;
extern unsigned char v5 (signed char, unsigned short, unsigned char);
extern unsigned char (*v6) (signed char, unsigned short, unsigned char);
extern signed char v7 (unsigned char, signed int, signed short, unsigned int);
extern signed char (*v8) (unsigned char, signed int, signed short, unsigned int);
extern unsigned short v9 (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, unsigned int, signed short);
extern unsigned int v11 (signed short, signed int, unsigned char);
extern unsigned int (*v12) (signed short, signed int, unsigned char);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (signed int, unsigned char, unsigned int);
extern signed int (*v20) (signed int, unsigned char, unsigned int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned char v27 (unsigned int, unsigned char, signed char);
extern unsigned char (*v28) (unsigned int, unsigned char, signed char);
extern unsigned short v29 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed short v32 = 3;
unsigned char v31 = 6;

signed char v3 (signed int v34, unsigned short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 0;
unsigned int v38 = 4U;
signed int v37 = 0;
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
unsigned short v43;
unsigned char v44;
signed int v45;
signed int v46;
v42 = -2 - 3;
v43 = 0 + 2;
v44 = 3 - v31;
v45 = 2 + 1;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
