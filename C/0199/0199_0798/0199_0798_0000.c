#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned char);
extern signed int (*v2) (signed short, unsigned char);
extern unsigned short v3 (unsigned int, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, signed short, unsigned int, unsigned short);
extern signed short v5 (signed short, signed char, signed char, unsigned int);
extern signed short (*v6) (signed short, signed char, signed char, unsigned int);
unsigned char v7 (unsigned int, signed short);
unsigned char (*v8) (unsigned int, signed short) = v7;
extern signed short v9 (unsigned char, signed short, signed char);
extern signed short (*v10) (unsigned char, signed short, signed char);
unsigned short v11 (unsigned short, unsigned int, unsigned short, signed int);
unsigned short (*v12) (unsigned short, unsigned int, unsigned short, signed int) = v11;
extern signed char v13 (unsigned short);
extern signed char (*v14) (unsigned short);
extern signed short v15 (signed short, signed short, signed char);
extern signed short (*v16) (signed short, signed short, signed char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed short, signed short, signed int);
extern unsigned char (*v24) (signed short, signed short, signed int);
extern unsigned char v25 (signed short, signed char);
extern unsigned char (*v26) (signed short, signed char);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned short v32 = 5;
unsigned char v31 = 5;

unsigned short v11 (unsigned short v34, unsigned int v35, unsigned short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -1;
unsigned int v39 = 2U;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 3;
signed short v44 = 2;
unsigned short v43 = 5;
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
signed short v48;
unsigned char v49;
signed int v50;
v48 = 0 + 2;
v49 = v31 + v31;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
