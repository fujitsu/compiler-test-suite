#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, unsigned short);
extern signed int (*v2) (unsigned short, unsigned short, unsigned short);
extern unsigned short v3 (unsigned short, signed short);
extern unsigned short (*v4) (unsigned short, signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned short v7 (signed int, signed char);
extern unsigned short (*v8) (signed int, signed char);
signed int v9 (unsigned char, signed short, unsigned char, signed int);
signed int (*v10) (unsigned char, signed short, unsigned char, signed int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (signed char, signed short, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short, signed short);
extern signed short v15 (unsigned char, unsigned char);
extern signed short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned int, unsigned char);
extern void v21 (signed int, signed short);
extern void (*v22) (signed int, signed short);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (unsigned int, signed int, unsigned int, signed short);
extern signed short (*v28) (unsigned int, signed int, unsigned int, signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
unsigned int v32 = 4U;
signed int v31 = 2;

signed int v9 (unsigned char v34, signed short v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned int v39 = 4U;
signed char v38 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed char v41;
signed short v42;
signed short v43;
signed short v44;
signed char v45;
v41 = -3 + -3;
v42 = -2 - v35;
v43 = 0 + v35;
v44 = 2 + 3;
v45 = v13 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 17: 
return 2;
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
unsigned short v48;
unsigned short v49;
unsigned short v50;
signed int v51;
v48 = 4 + 7;
v49 = 6 - 3;
v50 = v33 + 2;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
