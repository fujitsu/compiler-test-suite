#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, signed char, unsigned short, signed short);
extern signed char (*v2) (signed short, signed char, unsigned short, signed short);
extern signed int v3 (signed int, signed short);
extern signed int (*v4) (signed int, signed short);
signed short v5 (unsigned int, signed int, signed char, unsigned int);
signed short (*v6) (unsigned int, signed int, signed char, unsigned int) = v5;
extern unsigned char v7 (unsigned char, signed int, signed char);
extern unsigned char (*v8) (unsigned char, signed int, signed char);
extern unsigned int v9 (signed int, signed int);
extern unsigned int (*v10) (signed int, signed int);
extern unsigned int v11 (unsigned short, signed short);
extern unsigned int (*v12) (unsigned short, signed short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
signed int v15 (unsigned int, signed int, signed int);
signed int (*v16) (unsigned int, signed int, signed int) = v15;
extern signed short v17 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v18) (signed int, unsigned char, unsigned int, unsigned char);
extern void v19 (signed char, signed char, unsigned int, signed int);
extern void (*v20) (signed char, signed char, unsigned int, signed int);
extern signed char v21 (signed int, signed int, signed int, signed short);
extern signed char (*v22) (signed int, signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, unsigned short);
extern void (*v24) (unsigned short, signed short, unsigned short);
extern unsigned char v25 (signed int, signed short, signed char, signed char);
extern unsigned char (*v26) (signed int, signed short, signed char, signed char);
extern unsigned short v27 (signed short, signed int, signed char);
extern unsigned short (*v28) (signed short, signed int, signed char);
extern void v29 (signed short, signed int, unsigned char);
extern void (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 7;
unsigned int v31 = 6U;

signed int v15 (unsigned int v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -1;
signed short v38 = -1;
signed short v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v40, signed int v41, signed char v42, unsigned int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 7;
unsigned int v45 = 7U;
unsigned char v44 = 7;
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
signed short v49;
signed char v50;
unsigned short v51;
signed short v52;
signed char v53;
v49 = -2 + 2;
v50 = -3 + 2;
v51 = v33 + 6;
v52 = 1 + -1;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
