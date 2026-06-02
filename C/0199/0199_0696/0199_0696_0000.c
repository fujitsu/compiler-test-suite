#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned char v5 (unsigned short, unsigned char, signed short);
unsigned char (*v6) (unsigned short, unsigned char, signed short) = v5;
extern unsigned short v9 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v10) (signed char, signed int, unsigned short, signed char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (signed short, signed short, signed short, signed char);
extern void (*v14) (signed short, signed short, signed short, signed char);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
extern unsigned char v21 (unsigned short, unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned int v27 (unsigned short, signed int, signed char);
extern unsigned int (*v28) (unsigned short, signed int, signed char);
extern signed int v29 (signed int, unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (signed int, unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed char v32 = -3;
unsigned short v31 = 4;

unsigned char v5 (unsigned short v34, unsigned char v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -1;
signed char v38 = -4;
unsigned char v37 = 7;
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
v42 = 0 - 0;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
