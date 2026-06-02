#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char, signed short);
extern unsigned short (*v2) (signed char, unsigned char, signed short);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
signed int v7 (signed short);
signed int (*v8) (signed short) = v7;
signed char v9 (unsigned short, unsigned short, signed short);
signed char (*v10) (unsigned short, unsigned short, signed short) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
extern void v21 (unsigned char, signed char, signed int, unsigned char);
extern void (*v22) (unsigned char, signed char, signed int, unsigned char);
extern signed int v25 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v26) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char v27 (signed short, signed short);
extern unsigned char (*v28) (signed short, signed short);
extern signed short v29 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v30) (unsigned int, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 0;
signed int v31 = -1;

signed char v9 (unsigned short v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 6U;
signed char v38 = 0;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 3;
signed short v42 = -2;
unsigned char v41 = 5;
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
signed char v46;
unsigned char v47;
signed short v48;
unsigned short v49;
v46 = v33 - v33;
v47 = v32 - v32;
v48 = 3 + -4;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
