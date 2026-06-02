#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed int v5 (signed char, unsigned char, signed char);
extern signed int (*v6) (signed char, unsigned char, signed char);
unsigned char v7 (signed char, signed short);
unsigned char (*v8) (signed char, signed short) = v7;
signed short v9 (signed int, unsigned char, signed char);
signed short (*v10) (signed int, unsigned char, signed char) = v9;
extern signed short v11 (unsigned char, unsigned int, signed char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned int, signed char, unsigned char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern void v15 (unsigned char, signed short, unsigned char, unsigned char);
extern void (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed short v19 (signed short, signed int, signed char, signed int);
extern signed short (*v20) (signed short, signed int, signed char, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern signed short v23 (unsigned int, unsigned int, signed int, signed short);
extern signed short (*v24) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = 3;
unsigned int v31 = 1U;

signed short v9 (signed int v34, unsigned char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned short v38 = 2;
signed int v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 3;
unsigned int v43 = 4U;
signed char v42 = -4;
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
unsigned char v48;
v47 = -4 - -4;
v48 = v1 (v47);
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
