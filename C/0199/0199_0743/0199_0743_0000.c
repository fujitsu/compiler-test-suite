#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed char);
extern unsigned short (*v2) (signed int, signed char);
extern void v3 (void);
extern void (*v4) (void);
extern signed int v5 (unsigned char, unsigned int, unsigned char);
extern signed int (*v6) (unsigned char, unsigned int, unsigned char);
extern void v7 (unsigned short, signed char, signed int);
extern void (*v8) (unsigned short, signed char, signed int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
signed char v11 (signed short, unsigned char, unsigned short);
signed char (*v12) (signed short, unsigned char, unsigned short) = v11;
extern signed char v13 (signed char, unsigned short);
extern signed char (*v14) (signed char, unsigned short);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
extern unsigned short v19 (signed int, signed short, unsigned char, signed int);
extern unsigned short (*v20) (signed int, signed short, unsigned char, signed int);
signed short v21 (signed short, signed char, signed short);
signed short (*v22) (signed short, signed char, signed short) = v21;
extern signed int v23 (signed short, unsigned short, signed char);
extern signed int (*v24) (signed short, unsigned short, signed char);
extern signed char v25 (signed char, signed short, signed int, signed int);
extern signed char (*v26) (signed char, signed short, signed int, signed int);
extern unsigned short v27 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned short (*v28) (unsigned char, unsigned short, signed int, unsigned char);
extern void v29 (signed short, unsigned short, unsigned char, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed char v32 = 3;
unsigned char v31 = 5;

signed short v21 (signed short v34, signed char v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 1U;
signed short v38 = -4;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v40, unsigned char v41, unsigned short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 2;
unsigned int v44 = 4U;
unsigned int v43 = 5U;
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
signed int v48;
signed char v49;
unsigned short v50;
v48 = -4 - -1;
v49 = v33 + 2;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
