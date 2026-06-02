#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed int);
extern signed short (*v2) (signed char, signed int);
extern unsigned char v3 (unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (signed short, unsigned char, signed short);
extern unsigned short (*v8) (signed short, unsigned char, signed short);
extern unsigned int v9 (signed short, unsigned int);
extern unsigned int (*v10) (signed short, unsigned int);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
unsigned int v13 (signed char, signed short, signed short);
unsigned int (*v14) (signed char, signed short, signed short) = v13;
extern void v15 (void);
extern void (*v16) (void);
unsigned int v17 (signed int, unsigned int);
unsigned int (*v18) (signed int, unsigned int) = v17;
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed char v21 (signed char, unsigned short, signed short, unsigned short);
extern signed char (*v22) (signed char, unsigned short, signed short, unsigned short);
extern signed short v23 (signed char, signed int, signed char);
extern signed short (*v24) (signed char, signed int, signed char);
extern signed short v25 (unsigned int, signed int);
extern signed short (*v26) (unsigned int, signed int);
extern signed char v27 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed char v32 = 1;
signed int v31 = 0;

unsigned int v17 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 0;
signed int v37 = -4;
unsigned short v36 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v39, signed short v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 1U;
signed int v43 = -2;
unsigned char v42 = 4;
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
signed char v47;
signed int v48;
signed short v49;
v47 = -1 + 2;
v48 = -1 - v31;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
