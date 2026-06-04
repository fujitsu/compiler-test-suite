#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, signed short);
extern signed short (*v2) (signed char, signed short);
extern unsigned int v3 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned short, unsigned int, unsigned char);
extern void v5 (unsigned char, unsigned char, signed short);
extern void (*v6) (unsigned char, unsigned char, signed short);
extern unsigned short v7 (unsigned char, unsigned char, signed short);
extern unsigned short (*v8) (unsigned char, unsigned char, signed short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
unsigned int v13 (signed char, unsigned char, signed int, signed int);
unsigned int (*v14) (signed char, unsigned char, signed int, signed int) = v13;
signed char v15 (signed int);
signed char (*v16) (signed int) = v15;
extern unsigned char v17 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern signed int v27 (signed short, signed int, signed short, signed int);
extern signed int (*v28) (signed short, signed int, signed short, signed int);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed int v32 = 2;
unsigned char v31 = 6;

signed char v15 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 2;
unsigned short v36 = 0;
signed char v35 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v38;
signed int v39;
signed short v40;
signed int v41;
signed int v42;
v38 = 2 + 3;
v39 = v34 - v34;
v40 = -3 + -1;
v41 = -3 - 2;
v42 = v27 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
{
signed int v43;
unsigned short v44;
v43 = 3 + v34;
v44 = v25 (v43);
history[history_index++] = (int)v44;
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v45, unsigned char v46, signed int v47, signed int v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 7;
signed char v50 = 3;
unsigned char v49 = 6;
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
signed char v54;
signed short v55;
signed short v56;
v54 = 3 + 1;
v55 = -2 + 1;
v56 = v1 (v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
