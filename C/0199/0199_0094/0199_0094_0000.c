#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (signed short, unsigned char);
extern unsigned char (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned short, unsigned short);
extern signed char (*v6) (unsigned short, unsigned short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern void v11 (signed int, unsigned short, signed short, signed char);
extern void (*v12) (signed int, unsigned short, signed short, signed char);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned char v15 (signed int, signed char, unsigned short);
extern unsigned char (*v16) (signed int, signed char, unsigned short);
extern void v17 (unsigned short, signed char, unsigned short, signed int);
extern void (*v18) (unsigned short, signed char, unsigned short, signed int);
extern void v19 (signed int, signed int, signed short, signed int);
extern void (*v20) (signed int, signed int, signed short, signed int);
unsigned int v21 (signed char, unsigned char, signed short);
unsigned int (*v22) (signed char, unsigned char, signed short) = v21;
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed int v25 (signed char, signed int, signed short);
extern signed int (*v26) (signed char, signed int, signed short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed int v32 = 1;
unsigned int v31 = 3U;

unsigned int v29 (void)
{
{
for (;;) {
signed char v36 = -2;
unsigned char v35 = 4;
unsigned short v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v37, unsigned char v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned char v42 = 1;
unsigned int v41 = 4U;
unsigned int v40 = 4U;
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
