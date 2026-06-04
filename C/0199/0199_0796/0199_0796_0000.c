#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned char v5 (signed int, signed short, signed char, signed short);
extern unsigned char (*v6) (signed int, signed short, signed char, signed short);
extern unsigned short v7 (unsigned char, signed char, unsigned char);
extern unsigned short (*v8) (unsigned char, signed char, unsigned char);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned char v15 (unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned int, unsigned char, signed short, signed int);
extern signed char (*v20) (unsigned int, unsigned char, signed short, signed int);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
signed int v25 (unsigned int, signed char, signed short, unsigned int);
signed int (*v26) (unsigned int, signed char, signed short, unsigned int) = v25;
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed char v32 = 0;
signed int v31 = 1;

unsigned int v27 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 1;
unsigned char v36 = 7;
unsigned short v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned int v38, signed char v39, signed short v40, unsigned int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
signed short v43 = -3;
unsigned char v42 = 3;
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
unsigned int v48;
unsigned char v49;
v47 = v32 - -4;
v48 = 5U + 2U;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
