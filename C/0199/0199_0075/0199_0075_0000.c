#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern void v9 (signed char, signed char);
extern void (*v10) (signed char, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
signed short v13 (unsigned char, signed int);
signed short (*v14) (unsigned char, signed int) = v13;
extern signed char v15 (unsigned short, signed short, signed short);
extern signed char (*v16) (unsigned short, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern unsigned short v25 (signed int, signed int, signed short);
extern unsigned short (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed int, unsigned short, unsigned int);
extern signed int (*v28) (signed int, unsigned short, unsigned int);
extern unsigned short v29 (signed char, signed short, signed char, signed int);
extern unsigned short (*v30) (signed char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed int v32 = 1;
signed int v31 = 0;

signed short v13 (unsigned char v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 2;
unsigned char v37 = 0;
signed char v36 = 1;
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
unsigned int v41;
unsigned short v42;
v41 = 3U + v33;
v42 = v1 (v41);
history[history_index++] = (int)v42;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
