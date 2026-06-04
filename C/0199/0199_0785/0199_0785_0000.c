#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
unsigned short v3 (signed short, signed char, unsigned short, unsigned short);
unsigned short (*v4) (signed short, signed char, unsigned short, unsigned short) = v3;
extern signed char v5 (signed int, unsigned int, signed char);
extern signed char (*v6) (signed int, unsigned int, signed char);
extern unsigned short v7 (signed char, signed short, signed short);
extern unsigned short (*v8) (signed char, signed short, signed short);
extern signed int v9 (signed char, signed short, unsigned int, signed short);
extern signed int (*v10) (signed char, signed short, unsigned int, signed short);
extern unsigned char v13 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned char, unsigned int);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern unsigned char v23 (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (signed int, signed short, signed int, signed char);
extern signed short (*v30) (signed int, signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = 0;
unsigned short v31 = 0;

unsigned short v21 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -2;
unsigned char v36 = 2;
unsigned char v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v38, signed char v39, unsigned short v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 3;
signed short v43 = -4;
unsigned int v42 = 1U;
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
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
