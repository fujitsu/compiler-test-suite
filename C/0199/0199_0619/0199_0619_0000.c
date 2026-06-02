#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed short v5 (unsigned int, signed int, unsigned short, unsigned int);
signed short (*v6) (unsigned int, signed int, unsigned short, unsigned int) = v5;
extern unsigned int v7 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed int, signed int, signed int);
extern unsigned short v9 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short, signed short, unsigned short);
extern signed short v11 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v12) (unsigned int, signed char, signed char, unsigned char);
extern unsigned short v13 (signed int, signed int, unsigned char);
extern unsigned short (*v14) (signed int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned int, signed char, unsigned int);
extern void (*v18) (unsigned int, signed char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned short, signed char);
extern signed int (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern unsigned char v29 (unsigned char, signed int, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 4;
unsigned short v31 = 7;

signed short v5 (unsigned int v34, signed int v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 1;
unsigned int v39 = 1U;
signed short v38 = 0;
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
unsigned char v43;
signed char v44;
v43 = 5 - 1;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
