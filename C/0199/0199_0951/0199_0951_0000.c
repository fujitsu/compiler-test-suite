#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int);
extern unsigned char (*v2) (signed int, signed char, signed int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned char, unsigned char);
extern void (*v10) (signed int, unsigned char, unsigned char);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed int, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (signed short, unsigned char, unsigned short);
extern void (*v18) (signed short, unsigned char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned char, unsigned int);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
signed int v27 (unsigned short, unsigned int);
signed int (*v28) (unsigned short, unsigned int) = v27;
extern signed short v29 (unsigned int, signed char, unsigned int);
extern signed short (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed char v32 = -4;
signed int v31 = 0;

signed int v27 (unsigned short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 7U;
unsigned short v37 = 5;
signed char v36 = 2;
trace++;
switch (trace)
{
case 9: 
return -3;
case 11: 
return -3;
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
signed int v41;
signed char v42;
signed int v43;
unsigned char v44;
v41 = v31 - v31;
v42 = v32 + -4;
v43 = v31 + -3;
v44 = v1 (v41, v42, v43);
history[history_index++] = (int)v44;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
