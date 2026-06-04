#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern signed char v3 (signed int, signed short);
extern signed char (*v4) (signed int, signed short);
extern signed short v5 (signed short, signed char, unsigned char);
extern signed short (*v6) (signed short, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, signed char);
extern signed int (*v8) (unsigned short, signed char, signed char);
extern unsigned char v11 (signed char, signed char);
extern unsigned char (*v12) (signed char, signed char);
unsigned short v13 (signed int, signed char, unsigned int);
unsigned short (*v14) (signed int, signed char, unsigned int) = v13;
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned char, signed short);
extern void (*v20) (unsigned char, signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned int, unsigned int);
extern signed int v27 (signed char, unsigned char);
extern signed int (*v28) (signed char, unsigned char);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed int v32 = -3;
signed short v31 = -2;

unsigned short v13 (signed int v34, signed char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
signed int v38 = 1;
unsigned char v37 = 3;
trace++;
switch (trace)
{
case 11: 
return 5;
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
unsigned int v42;
signed char v43;
signed int v44;
v42 = 0U - 5U;
v43 = -2 - 1;
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
