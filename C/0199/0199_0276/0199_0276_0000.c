#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
extern signed int v3 (unsigned char, signed short, unsigned short);
extern signed int (*v4) (unsigned char, signed short, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed char v7 (void);
signed char (*v8) (void) = v7;
extern unsigned int v9 (unsigned int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char);
extern signed short v11 (unsigned int, signed int, signed int, signed short);
extern signed short (*v12) (unsigned int, signed int, signed int, signed short);
unsigned int v13 (signed char, signed short, signed char, signed int);
unsigned int (*v14) (signed char, signed short, signed char, signed int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int, unsigned short, signed char);
extern unsigned int (*v18) (signed int, unsigned short, signed char);
extern unsigned char v21 (signed short, signed char, signed short, unsigned short);
extern unsigned char (*v22) (signed short, signed char, signed short, unsigned short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (signed int, signed int);
extern signed int (*v26) (signed int, signed int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned int v32 = 1U;
unsigned char v31 = 4;

unsigned int v13 (signed char v34, signed short v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
unsigned char v39 = 7;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned short v43 = 7;
signed int v42 = 2;
unsigned short v41 = 0;
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
unsigned short v46;
signed char v47;
v46 = 2 + 3;
v47 = -1 + -3;
v1 (v46, v47);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
