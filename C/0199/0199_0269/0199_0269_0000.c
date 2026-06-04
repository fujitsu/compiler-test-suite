#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
extern unsigned short v3 (signed char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char);
unsigned char v5 (unsigned char, unsigned char, unsigned short);
unsigned char (*v6) (unsigned char, unsigned char, unsigned short) = v5;
extern unsigned short v7 (unsigned short, signed int, unsigned short);
extern unsigned short (*v8) (unsigned short, signed int, unsigned short);
extern unsigned char v9 (unsigned char, unsigned short, signed int);
extern unsigned char (*v10) (unsigned char, unsigned short, signed int);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed short v13 (unsigned short, unsigned char, unsigned short);
extern signed short (*v14) (unsigned short, unsigned char, unsigned short);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
unsigned char v17 (signed short, unsigned char, signed char, signed int);
unsigned char (*v18) (signed short, unsigned char, signed char, signed int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v22) (unsigned char, unsigned short, signed char, unsigned int);
extern void v23 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned char, signed char, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned short v32 = 2;
signed short v31 = 1;

unsigned char v17 (signed short v34, unsigned char v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 4;
signed short v39 = 2;
signed short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v41, unsigned char v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = -4;
signed short v45 = 1;
unsigned short v44 = 1;
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
signed char v49;
signed int v50;
v49 = -4 - 2;
v50 = v1 (v49);
history[history_index++] = (int)v50;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
