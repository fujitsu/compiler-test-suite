#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (signed char, unsigned char, signed char, signed char);
extern unsigned int (*v4) (signed char, unsigned char, signed char, signed char);
extern void v5 (unsigned short, unsigned short, signed int);
extern void (*v6) (unsigned short, unsigned short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned short v15 (signed char, signed char, unsigned char);
extern unsigned short (*v16) (signed char, signed char, unsigned char);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern void v19 (signed short, unsigned int);
extern void (*v20) (signed short, unsigned int);
extern void v21 (unsigned short, signed char, signed int, unsigned char);
extern void (*v22) (unsigned short, signed char, signed int, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, unsigned short, unsigned short);
extern void (*v26) (signed int, unsigned short, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, unsigned int);
extern unsigned int (*v28) (unsigned char, signed short, signed char, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned char v32 = 4;
unsigned short v31 = 2;

signed short v17 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 1;
signed int v36 = -3;
unsigned short v35 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = 2;
unsigned int v40 = 6U;
unsigned short v39 = 7;
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
unsigned char v44;
v44 = v1 ();
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
