#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v5 (unsigned short, unsigned int, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned int);
extern signed char v7 (signed int);
extern signed char (*v8) (signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned int v15 (unsigned short, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern signed char v19 (unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned char);
extern signed short v21 (signed short, unsigned int, unsigned char, signed short);
extern signed short (*v22) (signed short, unsigned int, unsigned char, signed short);
unsigned char v23 (signed short, unsigned int, signed int);
unsigned char (*v24) (signed short, unsigned int, signed int) = v23;
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed char v27 (signed char, unsigned char, signed short);
extern signed char (*v28) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned int v32 = 6U;
unsigned char v31 = 5;

unsigned char v23 (signed short v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 0;
unsigned int v38 = 1U;
unsigned int v37 = 5U;
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
v42 = v1 ();
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
