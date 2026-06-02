#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int);
extern unsigned int (*v2) (unsigned int, signed int);
extern unsigned short v3 (signed short, signed int, unsigned short, signed short);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed short);
unsigned short v5 (unsigned short, unsigned char, unsigned int, signed char);
unsigned short (*v6) (unsigned short, unsigned char, unsigned int, signed char) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern signed int v15 (signed char, signed int, unsigned char);
extern signed int (*v16) (signed char, signed int, unsigned char);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed char v19 (unsigned int, signed int);
extern signed char (*v20) (unsigned int, signed int);
extern signed int v21 (signed int, signed short, unsigned short, signed int);
extern signed int (*v22) (signed int, signed short, unsigned short, signed int);
extern unsigned char v23 (unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned int, signed int, unsigned int);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed int v32 = -2;
signed short v31 = -1;

unsigned short v5 (unsigned short v34, unsigned char v35, unsigned int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -4;
signed short v39 = -2;
unsigned int v38 = 1U;
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
unsigned int v43;
signed int v44;
unsigned int v45;
v43 = v33 + 5U;
v44 = -1 + v32;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
