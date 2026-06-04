#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
signed int v3 (signed short, signed char, signed short);
signed int (*v4) (signed short, signed char, signed short) = v3;
unsigned int v5 (signed int, signed char);
unsigned int (*v6) (signed int, signed char) = v5;
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, signed short, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed short, signed int, signed int);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed short);
extern void v17 (unsigned char, signed int, signed short);
extern void (*v18) (unsigned char, signed int, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern unsigned short v23 (signed int, unsigned char, signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned char, signed int, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed short, signed char, signed int, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int, signed int);
extern signed char v29 (signed char, unsigned short, unsigned short);
extern signed char (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed short v32 = 3;
unsigned short v31 = 5;

unsigned int v5 (signed int v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -2;
signed int v37 = 1;
signed short v36 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v39, signed char v40, signed short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
signed short v43 = -4;
signed short v42 = 3;
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
signed short v49;
v47 = -2 - 2;
v48 = 7 - 0;
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
