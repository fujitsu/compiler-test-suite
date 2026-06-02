#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char, unsigned char);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern unsigned int v7 (signed char, signed char);
extern unsigned int (*v8) (signed char, signed char);
extern unsigned char v9 (signed short, unsigned short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned short, unsigned int);
extern signed int v13 (signed short, unsigned short);
extern signed int (*v14) (signed short, unsigned short);
extern void v15 (signed int, signed short, signed int);
extern void (*v16) (signed int, signed short, signed int);
extern signed char v17 (unsigned int, signed char, unsigned int, signed int);
extern signed char (*v18) (unsigned int, signed char, unsigned int, signed int);
extern signed short v19 (signed char, unsigned short, signed char);
extern signed short (*v20) (signed char, unsigned short, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
void v27 (unsigned char, signed short, unsigned int, signed short);
void (*v28) (unsigned char, signed short, unsigned int, signed short) = v27;
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned int v32 = 6U;
unsigned int v31 = 4U;

void v27 (unsigned char v34, signed short v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
signed char v39 = 1;
signed int v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 6U;
signed int v43 = -4;
signed int v42 = -2;
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
unsigned char v48;
unsigned char v49;
unsigned char v50;
v47 = 2 - -2;
v48 = 7 + 4;
v49 = 1 - 2;
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
