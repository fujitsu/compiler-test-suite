#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed char, unsigned short);
signed char v3 (signed char, signed short, signed int);
signed char (*v4) (signed char, signed short, signed int) = v3;
extern void v5 (signed char, signed char);
extern void (*v6) (signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (signed short, signed short, unsigned int);
extern signed char (*v10) (signed short, signed short, unsigned int);
extern signed char v11 (signed char, unsigned int, signed short, unsigned int);
extern signed char (*v12) (signed char, unsigned int, signed short, unsigned int);
extern unsigned short v13 (unsigned char, signed int, signed int, unsigned short);
extern unsigned short (*v14) (unsigned char, signed int, signed int, unsigned short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (signed int, signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, signed int, unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, unsigned short);
extern signed short (*v26) (unsigned short, unsigned short);
extern unsigned char v29 (unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed short v32 = 3;
signed short v31 = -3;

signed char v3 (signed char v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -1;
signed int v38 = -3;
unsigned short v37 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v40;
unsigned short v41;
signed short v42;
v40 = v37 + 0;
v41 = 3 - 6;
v42 = v25 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
signed char v43;
unsigned short v44;
unsigned int v45;
v43 = 2 - v34;
v44 = 7 + 1;
v45 = v21 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 15: 
return v34;
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
signed char v49;
unsigned short v50;
v48 = 6 - 5;
v49 = 1 + 2;
v50 = 6 - 3;
v1 (v48, v49, v50);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
