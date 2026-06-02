#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed short, unsigned int);
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
extern void v5 (signed short, signed int, signed int, signed short);
extern void (*v6) (signed short, signed int, signed int, signed short);
extern unsigned short v7 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (signed short, unsigned char, unsigned char, signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed int v21 (signed int, signed int, signed char);
signed int (*v22) (signed int, signed int, signed char) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned short v25 (unsigned char, signed char, signed char);
extern unsigned short (*v26) (unsigned char, signed char, signed char);
extern unsigned char v27 (unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 0U;
signed int v31 = -4;

unsigned int v23 (void)
{
{
for (;;) {
unsigned short v36 = 7;
signed char v35 = -2;
unsigned char v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v37, signed int v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 2;
unsigned int v41 = 2U;
unsigned int v40 = 7U;
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
signed int v45;
signed short v46;
unsigned int v47;
unsigned int v48;
v45 = v31 + v31;
v46 = -2 + 3;
v47 = v32 - 6U;
v48 = v1 (v45, v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
