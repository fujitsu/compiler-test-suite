#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (unsigned int, signed char);
extern void (*v4) (unsigned int, signed char);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (unsigned short, signed short, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int);
extern unsigned int v9 (signed int, signed char, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned char);
extern void v11 (signed char, unsigned short, signed char, unsigned int);
extern void (*v12) (signed char, unsigned short, signed char, unsigned int);
extern unsigned int v13 (signed int, signed char, signed char);
extern unsigned int (*v14) (signed int, signed char, signed char);
extern void v15 (signed int, signed int);
extern void (*v16) (signed int, signed int);
extern signed int v17 (unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (unsigned char, unsigned char, unsigned int);
unsigned int v19 (unsigned int, unsigned short, signed short);
unsigned int (*v20) (unsigned int, unsigned short, signed short) = v19;
extern signed short v21 (unsigned int, unsigned short, unsigned int, signed short);
extern signed short (*v22) (unsigned int, unsigned short, unsigned int, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned short v27 (unsigned int, signed int, signed short);
extern unsigned short (*v28) (unsigned int, signed int, signed short);
extern unsigned char v29 (signed char, signed short, unsigned char);
extern unsigned char (*v30) (signed char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed char v32 = 0;
signed short v31 = 1;

unsigned int v19 (unsigned int v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
unsigned short v38 = 6;
unsigned short v37 = 4;
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
v42 = v1 ();
history[history_index++] = (int)v42;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
