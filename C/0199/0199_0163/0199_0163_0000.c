#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char);
extern unsigned short (*v2) (signed char, unsigned char);
signed short v5 (signed short, signed char, signed int);
signed short (*v6) (signed short, signed char, signed int) = v5;
extern signed char v7 (signed short, signed int);
extern signed char (*v8) (signed short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned short, signed short, signed int);
extern void (*v20) (unsigned short, signed short, signed int);
extern signed int v23 (signed short, signed int);
extern signed int (*v24) (signed short, signed int);
extern signed short v25 (signed short, signed char, unsigned char, signed char);
extern signed short (*v26) (signed short, signed char, unsigned char, signed char);
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
extern unsigned int v29 (unsigned short, signed short);
extern unsigned int (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 1;
signed char v31 = 2;

signed short v5 (signed short v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
unsigned int v38 = 4U;
unsigned char v37 = 6;
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
unsigned char v43;
unsigned short v44;
v42 = -3 - 2;
v43 = 7 - 1;
v44 = v1 (v42, v43);
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
