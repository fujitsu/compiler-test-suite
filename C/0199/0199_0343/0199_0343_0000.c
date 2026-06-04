#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern signed char v3 (signed int, signed int, signed int, signed short);
extern signed char (*v4) (signed int, signed int, signed int, signed short);
extern void v5 (signed short, signed int);
extern void (*v6) (signed short, signed int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v11 (unsigned short, signed int, unsigned char);
extern unsigned int (*v12) (unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern signed char v17 (signed char, signed int, signed char, signed int);
extern signed char (*v18) (signed char, signed int, signed char, signed int);
extern unsigned int v19 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, signed char);
unsigned short v21 (signed int, unsigned int);
unsigned short (*v22) (signed int, unsigned int) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed int v25 (unsigned char, signed short, signed short);
extern signed int (*v26) (unsigned char, signed short, signed short);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned int v29 (unsigned char, signed int, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned short v32 = 0;
signed int v31 = -3;

unsigned short v21 (signed int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -4;
signed short v37 = -3;
signed int v36 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v39;
signed int v40;
unsigned char v41;
unsigned int v42;
v39 = 3 + 0;
v40 = v34 - 0;
v41 = 3 - 3;
v42 = v11 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 15: 
return 0;
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
signed short v45;
unsigned int v46;
v45 = 0 - -2;
v46 = v1 (v45);
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
