#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned short, signed char, unsigned int);
extern signed char (*v4) (unsigned short, signed char, unsigned int);
unsigned int v5 (unsigned int, signed char);
unsigned int (*v6) (unsigned int, signed char) = v5;
extern unsigned short v7 (unsigned short, unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, unsigned short, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int, unsigned short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, unsigned int);
extern signed int v15 (unsigned int, signed short, signed int);
extern signed int (*v16) (unsigned int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned int v21 (unsigned short, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int);
extern void v23 (unsigned short, signed short);
extern void (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (signed int, signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed int, signed short, signed short, unsigned short);
signed char v29 (signed int);
signed char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -4;
unsigned short v31 = 2;

signed char v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 6U;
unsigned int v36 = 4U;
unsigned int v35 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v38, signed char v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 6U;
signed int v41 = 3;
signed int v40 = -3;
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
unsigned int v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
