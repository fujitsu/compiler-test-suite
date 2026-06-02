#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, signed int, unsigned short);
extern signed short (*v2) (unsigned int, signed int, unsigned short);
extern void v5 (signed char, signed int, unsigned short, unsigned short);
extern void (*v6) (signed char, signed int, unsigned short, unsigned short);
signed char v7 (signed int, unsigned char, unsigned short);
signed char (*v8) (signed int, unsigned char, unsigned short) = v7;
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
extern signed int v11 (unsigned int, signed int, unsigned short, signed int);
extern signed int (*v12) (unsigned int, signed int, unsigned short, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
extern unsigned char v17 (signed int, signed char);
extern unsigned char (*v18) (signed int, signed char);
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern unsigned char v23 (signed short, signed int, signed int, signed int);
extern unsigned char (*v24) (signed short, signed int, signed int, signed int);
extern unsigned short v25 (signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (signed char, unsigned short, unsigned int);
extern signed short v27 (signed int, unsigned short);
extern signed short (*v28) (signed int, unsigned short);
extern unsigned int v29 (unsigned short, signed short, signed short);
extern unsigned int (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 5;
signed int v31 = 3;

signed char v7 (signed int v34, unsigned char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 2;
unsigned int v38 = 3U;
signed int v37 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed int v40;
signed char v41;
unsigned char v42;
v40 = v37 - v37;
v41 = 1 - 0;
v42 = v17 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 11: 
return -1;
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
unsigned int v45;
signed int v46;
unsigned short v47;
signed short v48;
v45 = 7U + 5U;
v46 = 2 - -2;
v47 = 3 + v32;
v48 = v1 (v45, v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
