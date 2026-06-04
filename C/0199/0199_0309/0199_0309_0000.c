#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned char);
extern signed short (*v2) (unsigned short, unsigned char);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (signed int, unsigned char);
extern signed int (*v8) (signed int, unsigned char);
extern signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
extern signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned short, signed short);
signed int v13 (signed int, signed char);
signed int (*v14) (signed int, signed char) = v13;
extern unsigned char v15 (signed int, signed int, signed int);
extern unsigned char (*v16) (signed int, signed int, signed int);
extern unsigned short v17 (signed char, unsigned int, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned int, unsigned short, signed int);
extern signed short v19 (unsigned char, signed char, signed char);
extern signed short (*v20) (unsigned char, signed char, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed short v25 (signed short, unsigned char, unsigned short, unsigned short);
extern signed short (*v26) (signed short, unsigned char, unsigned short, unsigned short);
extern void v27 (signed char, signed int, unsigned char);
extern void (*v28) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 5;
signed short v31 = 3;

signed int v23 (void)
{
{
for (;;) {
unsigned int v36 = 5U;
signed int v35 = -2;
signed char v34 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = 1;
unsigned int v40 = 5U;
unsigned char v39 = 2;
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
unsigned short v44;
unsigned char v45;
signed short v46;
v44 = 0 - 5;
v45 = v33 - v32;
v46 = v1 (v44, v45);
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
