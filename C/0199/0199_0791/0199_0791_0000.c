#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed short, signed char, unsigned short);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int, signed int, signed char, unsigned short);
extern unsigned char (*v6) (signed int, signed int, signed char, unsigned short);
extern unsigned char v7 (signed short, signed char);
extern unsigned char (*v8) (signed short, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
void v11 (signed char, unsigned int, signed short);
void (*v12) (signed char, unsigned int, signed short) = v11;
extern unsigned char v13 (signed int, unsigned short);
extern unsigned char (*v14) (signed int, unsigned short);
extern signed short v15 (unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned short);
extern signed int v17 (unsigned char, unsigned char, signed short, signed int);
extern signed int (*v18) (unsigned char, unsigned char, signed short, signed int);
unsigned short v19 (unsigned int);
unsigned short (*v20) (unsigned int) = v19;
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern void v23 (unsigned int, unsigned int, unsigned short, unsigned int);
extern void (*v24) (unsigned int, unsigned int, unsigned short, unsigned int);
extern void v25 (signed int, signed int, signed int, unsigned char);
extern void (*v26) (signed int, signed int, signed int, unsigned char);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned short v32 = 7;
signed char v31 = -4;

unsigned short v19 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -4;
unsigned short v36 = 0;
signed char v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v38, unsigned int v39, signed short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 3;
unsigned int v42 = 2U;
unsigned int v41 = 2U;
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
signed short v47;
signed char v48;
unsigned short v49;
v46 = 4 - v32;
v47 = -3 + 2;
v48 = v31 + -2;
v49 = v32 - 7;
v1 (v46, v47, v48, v49);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
