#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
signed short v5 (unsigned short);
signed short (*v6) (unsigned short) = v5;
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed int v11 (unsigned short, unsigned int, signed short, signed short);
extern signed int (*v12) (unsigned short, unsigned int, signed short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (unsigned char, unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, unsigned char, signed int, unsigned short);
signed int v17 (signed char, unsigned char);
signed int (*v18) (signed char, unsigned char) = v17;
extern signed int v19 (signed short, signed char);
extern signed int (*v20) (signed short, signed char);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned char v23 (unsigned short, unsigned int, signed char);
extern unsigned char (*v24) (unsigned short, unsigned int, signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 1;
signed short v31 = 2;

signed int v17 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
signed short v37 = -2;
unsigned int v36 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 0;
signed short v41 = -4;
unsigned char v40 = 3;
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
signed short v45;
signed char v46;
v45 = -3 - 1;
v46 = v1 (v45);
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
