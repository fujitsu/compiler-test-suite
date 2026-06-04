#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned short v3 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, signed int, unsigned char, unsigned short);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
unsigned int v19 (signed int);
unsigned int (*v20) (signed int) = v19;
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed short v23 (unsigned char, unsigned int, signed char);
extern signed short (*v24) (unsigned char, unsigned int, signed char);
unsigned int v25 (signed short);
unsigned int (*v26) (signed short) = v25;
extern unsigned short v27 (signed short, unsigned int, signed char, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int, signed char, unsigned int);
extern void v29 (signed int, signed char);
extern void (*v30) (signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned char v32 = 7;
signed char v31 = -3;

unsigned int v25 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 1;
unsigned short v36 = 2;
signed int v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 5;
signed char v40 = 0;
signed short v39 = -4;
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
signed char v44;
unsigned short v45;
v44 = 3 + v31;
v45 = v1 (v44);
history[history_index++] = (int)v45;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
