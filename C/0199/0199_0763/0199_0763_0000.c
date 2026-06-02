#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned short);
extern signed char (*v2) (unsigned short);
unsigned short v3 (signed int, signed int);
unsigned short (*v4) (signed int, signed int) = v3;
extern signed short v5 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char, unsigned short, unsigned char);
extern void v7 (unsigned char, signed short, unsigned char, unsigned int);
extern void (*v8) (unsigned char, signed short, unsigned char, unsigned int);
extern unsigned int v9 (signed short, signed char);
extern unsigned int (*v10) (signed short, signed char);
extern unsigned int v11 (unsigned int, signed short);
extern unsigned int (*v12) (unsigned int, signed short);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
extern signed int v17 (unsigned short, unsigned int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned int, unsigned int);
extern signed char v19 (unsigned short, unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned short, unsigned char);
extern signed int v21 (signed char, unsigned char, signed char, unsigned short);
extern signed int (*v22) (signed char, unsigned char, signed char, unsigned short);
extern unsigned int v23 (signed int, signed short, signed short);
extern unsigned int (*v24) (signed int, signed short, signed short);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern void v27 (signed int, unsigned int, unsigned int);
extern void (*v28) (signed int, unsigned int, unsigned int);
extern signed char v29 (unsigned short, unsigned short, signed short);
extern signed char (*v30) (unsigned short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed char v32 = -2;
signed int v31 = 1;

unsigned int v13 (void)
{
{
for (;;) {
unsigned int v36 = 3U;
unsigned short v35 = 1;
unsigned short v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v37, signed int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed short v41 = -1;
signed char v40 = -4;
signed char v39 = -3;
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
signed char v45;
v44 = 7 - 4;
v45 = v1 (v44);
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
