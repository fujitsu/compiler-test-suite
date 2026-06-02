#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned int, signed int);
extern unsigned char (*v2) (signed int, unsigned int, signed int);
unsigned short v3 (signed char, signed short, signed char, signed char);
unsigned short (*v4) (signed char, signed short, signed char, signed char) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned short);
extern unsigned short (*v8) (signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
signed short v13 (signed int);
signed short (*v14) (signed int) = v13;
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned char, signed int, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed int, signed short);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed char v32 = -2;
signed int v31 = -1;

signed short v13 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 2;
signed int v36 = -3;
signed int v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v38, signed short v39, signed char v40, signed char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
unsigned char v43 = 4;
unsigned char v42 = 5;
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
signed int v47;
unsigned int v48;
signed int v49;
unsigned char v50;
v47 = v31 + v31;
v48 = 4U + 6U;
v49 = v31 + 0;
v50 = v1 (v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
