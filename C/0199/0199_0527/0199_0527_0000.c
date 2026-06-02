#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed short, unsigned short, unsigned int);
extern void (*v2) (signed short, signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed int v7 (unsigned int, signed short, signed short, signed short);
signed int (*v8) (unsigned int, signed short, signed short, signed short) = v7;
extern signed char v9 (signed short, signed char, unsigned char);
extern signed char (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern unsigned char v13 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned char);
extern unsigned char v15 (unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, unsigned int);
extern signed char v17 (signed int, signed char);
extern signed char (*v18) (signed int, signed char);
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
extern unsigned char v21 (unsigned int, unsigned int, signed short);
extern unsigned char (*v22) (unsigned int, unsigned int, signed short);
extern void v23 (unsigned char, signed int);
extern void (*v24) (unsigned char, signed int);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short, signed char);
extern void (*v30) (unsigned int, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned int v32 = 1U;
unsigned char v31 = 1;

signed int v7 (unsigned int v34, signed short v35, signed short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 4U;
unsigned short v39 = 4;
unsigned char v38 = 0;
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
signed short v43;
signed short v44;
unsigned short v45;
unsigned int v46;
v43 = 1 + -4;
v44 = 1 - 3;
v45 = 0 + 3;
v46 = 3U - v32;
v1 (v43, v44, v45, v46);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
