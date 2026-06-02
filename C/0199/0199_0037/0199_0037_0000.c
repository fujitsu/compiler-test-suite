#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern void v5 (signed char, signed char, signed int);
extern void (*v6) (signed char, signed char, signed int);
extern unsigned char v7 (signed short, unsigned short, unsigned int, signed short);
extern unsigned char (*v8) (signed short, unsigned short, unsigned int, signed short);
extern void v9 (unsigned char, signed char, signed short);
extern void (*v10) (unsigned char, signed char, signed short);
extern unsigned char v11 (unsigned char, unsigned short, signed short);
extern unsigned char (*v12) (unsigned char, unsigned short, signed short);
signed char v13 (unsigned short, signed short, unsigned char, signed int);
signed char (*v14) (unsigned short, signed short, unsigned char, signed int) = v13;
extern void v15 (unsigned short, signed char, unsigned int, unsigned char);
extern void (*v16) (unsigned short, signed char, unsigned int, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int v23 (unsigned char, signed char, unsigned int, signed int);
extern unsigned int (*v24) (unsigned char, signed char, unsigned int, signed int);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
void v29 (signed short, signed int);
void (*v30) (signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = -1;
signed int v31 = 2;

void v29 (signed short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 5;
signed char v37 = 1;
unsigned short v36 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v39, signed short v40, unsigned char v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 3;
signed int v44 = -2;
signed char v43 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v46;
signed char v47;
v46 = 7U + 2U;
v47 = v25 (v46);
history[history_index++] = (int)v47;
}
break;
case 3: 
return v43;
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
unsigned short v50;
signed short v51;
unsigned int v52;
v50 = v33 + v33;
v51 = v32 - v32;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
