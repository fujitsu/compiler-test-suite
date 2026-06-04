#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned short v5 (signed short, signed int);
extern unsigned short (*v6) (signed short, signed int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (signed short, signed char);
extern signed int (*v10) (signed short, signed char);
extern void v11 (unsigned short, signed char, signed int);
extern void (*v12) (unsigned short, signed char, signed int);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed int);
extern signed short (*v18) (signed int, signed short, signed int);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern unsigned int v23 (signed int, signed int, unsigned int);
extern unsigned int (*v24) (signed int, signed int, unsigned int);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned short);
extern signed char v27 (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed char (*v28) (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed int v29 (unsigned char, unsigned int, signed short);
extern signed int (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed short v32 = -3;
signed char v31 = -4;

signed int v21 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 7;
unsigned int v36 = 2U;
signed char v35 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned char v40 = 4;
signed short v39 = -2;
unsigned int v38 = 5U;
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
unsigned char v43;
unsigned char v44;
unsigned char v45;
v43 = 4 - 7;
v44 = 7 + 7;
v45 = v1 (v43, v44);
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
