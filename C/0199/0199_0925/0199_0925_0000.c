#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned char v5 (signed int, unsigned int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int);
unsigned short v7 (void);
unsigned short (*v8) (void) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v13 (unsigned short, signed int, signed char, signed short);
extern signed short (*v14) (unsigned short, signed int, signed char, signed short);
extern void v15 (unsigned short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, unsigned int, unsigned short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
unsigned char v21 (signed short, signed int);
unsigned char (*v22) (signed short, signed int) = v21;
extern unsigned int v23 (unsigned char, signed int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned short, signed int);
extern signed char v25 (unsigned short, signed char, signed int, signed int);
extern signed char (*v26) (unsigned short, signed char, signed int, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (signed int, unsigned char, signed char);
extern unsigned char (*v30) (signed int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 6;
signed char v31 = -3;

unsigned char v21 (signed short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 2;
unsigned short v37 = 5;
signed char v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (void)
{
{
for (;;) {
signed short v41 = -3;
unsigned int v40 = 7U;
signed int v39 = 1;
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
signed short v44;
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
