#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int, signed short, unsigned char);
extern unsigned char (*v2) (unsigned short, signed int, signed short, unsigned char);
extern unsigned char v3 (signed int, unsigned short);
extern unsigned char (*v4) (signed int, unsigned short);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
extern signed char v7 (unsigned short, signed char, unsigned char, unsigned int);
extern signed char (*v8) (unsigned short, signed char, unsigned char, unsigned int);
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
extern void v11 (signed int, unsigned char, signed int);
extern void (*v12) (signed int, unsigned char, signed int);
extern signed int v13 (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, unsigned char);
extern signed char v15 (signed char, signed char, signed char);
extern signed char (*v16) (signed char, signed char, signed char);
signed char v19 (signed int, signed short, unsigned char, unsigned short);
signed char (*v20) (signed int, signed short, unsigned char, unsigned short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned short, unsigned short);
extern signed int (*v26) (signed int, signed char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned char);
extern unsigned char (*v28) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed short v32 = 2;
signed int v31 = -1;

signed char v19 (signed int v34, signed short v35, unsigned char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 4;
unsigned int v39 = 1U;
signed short v38 = -3;
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
unsigned short v43;
signed int v44;
signed short v45;
unsigned char v46;
unsigned char v47;
v43 = 3 + 5;
v44 = v31 + v31;
v45 = 2 - 1;
v46 = 1 + v33;
v47 = v1 (v43, v44, v45, v46);
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
