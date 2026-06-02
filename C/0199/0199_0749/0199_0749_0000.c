#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
signed int v5 (signed short, signed int, unsigned short);
signed int (*v6) (signed short, signed int, unsigned short) = v5;
extern signed char v7 (signed char, unsigned int);
extern signed char (*v8) (signed char, unsigned int);
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned char v23 (unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 6;
signed char v31 = -3;

signed int v5 (signed short v34, signed int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 5;
unsigned short v38 = 0;
unsigned int v37 = 7U;
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
signed char v42;
signed short v43;
v42 = -2 - -4;
v43 = v1 (v42);
history[history_index++] = (int)v43;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
