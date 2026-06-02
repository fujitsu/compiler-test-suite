#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed char);
extern signed int (*v2) (signed short, signed char);
extern unsigned char v3 (unsigned int, signed short);
extern unsigned char (*v4) (unsigned int, signed short);
unsigned char v5 (signed short, signed int, unsigned int, signed short);
unsigned char (*v6) (signed short, signed int, unsigned int, signed short) = v5;
extern signed short v7 (unsigned int, unsigned short, unsigned short);
extern signed short (*v8) (unsigned int, unsigned short, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed short, unsigned char, unsigned char);
extern void (*v14) (signed short, unsigned char, unsigned char);
extern signed int v15 (signed int, unsigned short, signed short);
extern signed int (*v16) (signed int, unsigned short, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed char v32 = -1;
unsigned char v31 = 5;

unsigned char v5 (signed short v34, signed int v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 7;
unsigned int v39 = 1U;
signed short v38 = -4;
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
signed char v44;
signed int v45;
v43 = 2 + -4;
v44 = v33 - v33;
v45 = v1 (v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
