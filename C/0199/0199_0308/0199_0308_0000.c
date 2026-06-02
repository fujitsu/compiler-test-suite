#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, signed char, unsigned short, signed short);
extern unsigned short (*v2) (signed int, signed char, unsigned short, signed short);
extern unsigned char v3 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned int, unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned char v9 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short, unsigned short);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern void v17 (unsigned short, unsigned char, unsigned char);
extern void (*v18) (unsigned short, unsigned char, unsigned char);
extern signed int v19 (unsigned char, unsigned short);
extern signed int (*v20) (unsigned char, unsigned short);
extern void v23 (unsigned int, unsigned char, signed int);
extern void (*v24) (unsigned int, unsigned char, signed int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned short, signed short, signed short);
extern unsigned char (*v30) (unsigned int, unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed short v32 = -2;
unsigned int v31 = 4U;

unsigned int v11 (void)
{
{
for (;;) {
signed char v36 = -1;
unsigned char v35 = 2;
unsigned int v34 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v37;
unsigned char v38;
unsigned char v39;
v37 = 4 - 3;
v38 = v35 + 3;
v39 = 3 + 5;
v17 (v37, v38, v39);
}
break;
case 17: 
return 6U;
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
signed int v42;
signed char v43;
unsigned short v44;
signed short v45;
unsigned short v46;
v42 = v33 - v33;
v43 = 3 + 0;
v44 = 4 + 5;
v45 = v32 - -1;
v46 = v1 (v42, v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
