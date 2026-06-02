#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed char v5 (unsigned short, unsigned short, signed int);
signed char (*v6) (unsigned short, unsigned short, signed int) = v5;
extern signed int v7 (signed char, unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (signed char, unsigned char, unsigned short, unsigned int);
extern unsigned short v9 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v10) (unsigned int, signed short, unsigned int, signed short);
extern unsigned char v11 (signed short, unsigned int);
extern unsigned char (*v12) (signed short, unsigned int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned int v17 (unsigned short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed char);
extern signed short (*v22) (unsigned short, unsigned char, signed char);
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
extern unsigned short v25 (signed int, unsigned int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned int, unsigned char, signed short);
extern unsigned char v27 (signed short, unsigned char, signed short, unsigned int);
extern unsigned char (*v28) (signed short, unsigned char, signed short, unsigned int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = 2;
signed char v31 = -3;

unsigned char v13 (void)
{
{
for (;;) {
signed short v36 = 2;
unsigned char v35 = 7;
signed short v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v37, unsigned short v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 6;
signed int v41 = -2;
signed int v40 = -4;
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
signed char v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
