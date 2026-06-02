#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned char v9 (unsigned int, unsigned short, signed char);
extern unsigned char (*v10) (unsigned int, unsigned short, signed char);
void v11 (signed short, unsigned char, unsigned int, unsigned int);
void (*v12) (signed short, unsigned char, unsigned int, unsigned int) = v11;
extern void v13 (unsigned char, signed char);
extern void (*v14) (unsigned char, signed char);
extern void v15 (signed int, unsigned short, unsigned short);
extern void (*v16) (signed int, unsigned short, unsigned short);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
extern signed short v19 (signed int, unsigned char, signed char, signed int);
extern signed short (*v20) (signed int, unsigned char, signed char, signed int);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed char v25 (signed short, signed short, unsigned int, signed int);
extern signed char (*v26) (signed short, signed short, unsigned int, signed int);
extern unsigned short v27 (signed char, signed int, signed short, unsigned char);
extern unsigned short (*v28) (signed char, signed int, signed short, unsigned char);
extern unsigned char v29 (signed short, signed short);
extern unsigned char (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned short v32 = 1;
signed int v31 = 0;

void v11 (signed short v34, unsigned char v35, unsigned int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
signed short v39 = -4;
unsigned short v38 = 6;
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
unsigned short v44;
v43 = -4 - -2;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
