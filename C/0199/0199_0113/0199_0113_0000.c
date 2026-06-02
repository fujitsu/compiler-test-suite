#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed int, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed int, signed int);
extern signed int v3 (signed int, unsigned int, signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int, signed int, unsigned int);
extern void v5 (unsigned short, signed int, unsigned char);
extern void (*v6) (unsigned short, signed int, unsigned char);
extern void v7 (signed int, signed short, unsigned short, unsigned int);
extern void (*v8) (signed int, signed short, unsigned short, unsigned int);
extern signed int v9 (signed int, unsigned char, unsigned char, unsigned char);
extern signed int (*v10) (signed int, unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
void v15 (signed short, unsigned short);
void (*v16) (signed short, unsigned short) = v15;
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned int v19 (unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned int);
extern unsigned int v21 (unsigned char, signed int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed int, signed char, unsigned int);
extern unsigned int v23 (unsigned short, signed short, signed char, unsigned char);
extern unsigned int (*v24) (unsigned short, signed short, signed char, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned short, signed int, unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned int v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = 3;
unsigned short v31 = 4;

unsigned int v17 (void)
{
{
for (;;) {
unsigned int v36 = 0U;
unsigned char v35 = 6;
unsigned short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v37, unsigned short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = 2;
unsigned short v40 = 7;
signed int v39 = 2;
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
unsigned short v45;
signed int v46;
signed int v47;
signed char v48;
v44 = 1 + 6;
v45 = v31 + 7;
v46 = -2 + 1;
v47 = 0 + 1;
v48 = v1 (v44, v45, v46, v47);
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
